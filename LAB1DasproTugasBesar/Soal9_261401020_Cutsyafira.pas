program Soal9_HariDalamBulan;
// operator mod untuk tahun kabisat + case-of bulan
uses crt;
var
  Tahun, Bulan, JmlHari : integer;
  Kabisat : boolean;
begin
  clrscr;
  write('Masukkan tahun            : ');
  readln(Tahun);
  write('Masukkan nomor bulan (1-12): ');
  readln(Bulan);

  Kabisat := (Tahun mod 400 = 0) or ((Tahun mod 4 = 0) and (Tahun mod 100 <> 0));

  if (Bulan < 1) or (Bulan > 12) then
    writeln('Nomor bulan tidak valid!')
  else
  begin
    case Bulan of
      1, 3, 5, 7, 8, 10, 12: JmlHari := 31;
      4, 6, 9, 11          : JmlHari := 30;
      2: if Kabisat then JmlHari := 29 else JmlHari := 28;
    end;

    if Kabisat then
      writeln('Tahun ', Tahun, ' adalah tahun kabisat.')
    else
      writeln('Tahun ', Tahun, ' bukan tahun kabisat.');
    writeln('Jumlah hari pada bulan ', Bulan, ' tahun ', Tahun, ' = ', JmlHari, ' hari');
  end;
  readln;
end.
