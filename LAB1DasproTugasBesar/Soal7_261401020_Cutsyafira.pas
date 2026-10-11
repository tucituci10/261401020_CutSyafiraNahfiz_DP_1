program Soal7_TarifParkir;
// case-of berdasarkan kode kendaraan 
uses crt;
var
    Kode : char;
    Lama : integer;
    Awal, Tambah, Maks, Total : longint;
    Valid : boolean;
begin
    clrscr;
    write('Kode kendaraan (M=Mobil, K=Motor, B=Bus): ');
    readln(Kode);
    Kode := upcase(Kode);
    write('Lama parkir (jam): ');
    readln(Lama);

    Valid := true;
    case Kode of
    'M': begin Awal := 5000;  Tambah := 3000; Maks := 30000; end;
    'K': begin Awal := 2000;  Tambah := 1000; Maks := 10000; end;
    'B': begin Awal := 10000; Tambah := 5000; Maks := 50000; end;
    else
    Valid := false;
    end;

    if (not Valid) or (Lama < 1) then
    writeln('Input tidak valid!')
    else
    begin
    if Lama > 10 then
        Total := Maks                              // tarif maksimal flat 
    else
      Total := Awal + (Lama - 1) * Tambah;       // jam pertama + jam berikutnya 
    writeln('Total tarif parkir: Rp', Total);
    end;
    readln;
end.
