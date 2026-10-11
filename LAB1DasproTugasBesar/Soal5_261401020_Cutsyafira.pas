program Soal5_RekapNilai;
// nested for-do 
uses crt;
var
    M, N, i, j         : integer;
    Nilai, Jumlah, Rata: real;
    JmlLulus, JmlTidak : integer;
begin
    clrscr;
    write('Jumlah mahasiswa (M) : ');
    readln(M);
    write('Jumlah tugas (N)     : ');
    readln(N);

    JmlLulus := 0;
    JmlTidak := 0;

    for i := 1 to M do                 // loop luar: tiap mahasiswa 
    begin
    writeln;
    writeln('--- Mahasiswa ke-', i, ' ---');
    Jumlah := 0;

    for j := 1 to N do               // loop dalam: tiap tugas  
    begin
        write('Nilai tugas ke-', j, ' : ');
        readln(Nilai);
        Jumlah := Jumlah + Nilai;
    end;

    Rata := Jumlah / N;
    write('Rata-rata mahasiswa ke-', i, ' = ', Rata:0:2, ' -> ');
    if Rata >= 65 then
    begin
        writeln('LULUS');
        JmlLulus := JmlLulus + 1;
    end
    else
    begin
        writeln('TIDAK LULUS');
        JmlTidak := JmlTidak + 1;
    end;
    end;

    writeln;
    writeln('===== REKAPITULASI =====');
    writeln('Total mahasiswa LULUS       : ', JmlLulus);
    writeln('Total mahasiswa TIDAK LULUS : ', JmlTidak);
    readln;
end.