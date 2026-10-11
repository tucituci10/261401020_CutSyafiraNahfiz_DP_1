program TokoBuku;
//  for-to-do + if-else bertingkat 
uses crt;
var
    n, i, PersenDiskon : integer;
    Harga, Total, Diskon, TotalBayar : real;
begin
    clrscr;
    write('Jumlah barang yang dibeli (n): ');
    readln(n);

    Total := 0;
    for i := 1 to n do
    begin
    write('Harga barang ke-', i, ' : Rp. ');
    readln(Harga);
    Total := Total + Harga;
    end;

    if Total < 100000 then
    PersenDiskon := 0
    else if Total < 500000 then
    PersenDiskon := 10
    else
    PersenDiskon := 20;

    Diskon := Total * PersenDiskon / 100;
    TotalBayar := Total - Diskon;

    writeln;
    writeln('===== RINCIAN BELANJA =====');
    writeln('Jumlah barang : ', n);
    writeln('Total sebelum diskon: Rp. ', Total:0:0);
    writeln('Besar diskon (', PersenDiskon, '%) : Rp. ', Diskon:0:0);
    writeln('Total bayar akhir  : Rp. ', TotalBayar:0:0);
    readln;
end.

