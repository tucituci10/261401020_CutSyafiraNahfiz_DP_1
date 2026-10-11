program Soal6_NilaiAkhir;
// if-else bertingkat + operator logika AND 
uses crt;
var
    Tugas, UTS, UAS, Hadir, NilaiAkhir : real;
    Indeks : char;
begin
    clrscr;
    write('Nilai Tugas       : '); readln(Tugas);
    write('Nilai UTS         : '); readln(UTS);
    write('Nilai UAS         : '); readln(UAS);
    write('Kehadiran (%)     : '); readln(Hadir);

  NilaiAkhir := (0.3 * Tugas) + (0.3 * UTS) + (0.4 * UAS);

    if NilaiAkhir >= 85 then Indeks := 'A'
    else if NilaiAkhir >= 75 then Indeks := 'B'
    else if NilaiAkhir >= 60 then Indeks := 'C'
    else if NilaiAkhir >= 50 then Indeks := 'D'
    else Indeks := 'E';

    writeln;
    writeln('Nilai Akhir  : ', NilaiAkhir:0:2);
    writeln('Indeks Huruf : ', Indeks);
    if (NilaiAkhir >= 60) and (Hadir >= 80) then
    writeln('Status       : LULUS')
    else
    writeln('Status       : TIDAK LULUS');
    readln;
end.