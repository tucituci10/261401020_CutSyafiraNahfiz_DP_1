program Soal4_Kalkulator;
// case-of + repeat-until 
uses crt;
var
    Pilihan : integer;
    A, B    : real;
    X, Y    : longint;
    Lagi    : char;
begin
    clrscr;
    repeat
    writeln('===== KALKULATOR SEDERHANA =====');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    write('Pilih operasi (1-5): ');
    readln(Pilihan);

    if (Pilihan < 1) or (Pilihan > 5) then
        writeln('Pilihan tidak valid!')
    else
    begin
        write('Angka pertama : ');
        readln(A);
        write('Angka kedua   : ');
        readln(B);

        case Pilihan of
        1: writeln('Hasil: ', A:0:2, ' + ', B:0:2, ' = ', A + B:0:2);
        2: writeln('Hasil: ', A:0:2, ' - ', B:0:2, ' = ', A - B:0:2);
        3: writeln('Hasil: ', A:0:2, ' x ', B:0:2, ' = ', A * B:0:2);
        4: if B = 0 then
            writeln('Error: pembagian dengan nol!')
            else
            writeln('Hasil: ', A:0:2, ' / ', B:0:2, ' = ', A / B:0:2);
        5: begin
                X := trunc(A);
                Y := trunc(B);
                if Y = 0 then
                writeln('Error: pembagi tidak boleh nol!')
                else
                begin
                writeln('Hasil: ', X, ' DIV ', Y, ' = ', X div Y);
                writeln('Hasil: ', X, ' MOD ', Y, ' = ', X mod Y);
                end;
            end;
        end;
    end;

    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(Lagi);
    writeln;
    until (Lagi = 'T') or (Lagi = 't');
end.
