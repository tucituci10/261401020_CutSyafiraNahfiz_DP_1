program Soal3_DeretAngka;
// while loop + continue 
uses crt;
var
    N, Kategori, i : integer;
begin
    clrscr;
    write('Masukkan nilai N : ');
    readln(N);
    write('Kategori deret (1: Ganjil, 2: Genap) : ');
    readln(Kategori);

    writeln('Hasil deret:');
    i := 0;
    while i < N do
    begin
    i := i + 1;                                   // naik di awal agar continue aman

    if (Kategori = 1) and (i mod 2 = 0) then continue;  // ganjil: lewati genap  
    if (Kategori = 2) and (i mod 2 <> 0) then continue; // genap : lewati ganjil 
    if i mod 5 = 0 then continue;                 // lewati kelipatan 5 

    write(i, ' ');
    end;
    writeln;
    readln;
end.