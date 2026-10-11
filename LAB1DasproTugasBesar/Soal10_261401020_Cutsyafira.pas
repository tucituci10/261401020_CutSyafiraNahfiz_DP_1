program Soal10_NamaHari;
// case-of angka 1-7 menjadi nama hari 
uses crt;
var
    Nomor : integer;
begin
    clrscr;
    write('Input (1-7): ');
    readln(Nomor);

    case Nomor of
    1: writeln('Output: "Hari Senin"');
    2: writeln('Output: "Hari Selasa"');
    3: writeln('Output: "Hari Rabu"');
    4: writeln('Output: "Hari Kamis"');
    5: writeln('Output: "Hari Jumat"');
    6: writeln('Output: "Hari Sabtu"');
    7: writeln('Output: "Hari Minggu"');
    else
    writeln('Input tidak valid! Masukkan angka 1 sampai 7.');
    end;
    readln;
end.