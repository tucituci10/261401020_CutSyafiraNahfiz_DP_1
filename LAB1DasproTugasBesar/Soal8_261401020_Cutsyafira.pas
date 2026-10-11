program Soal8_GajiKaryawan;
// case-of golongan + if lembur & bonus 
uses crt;
const
    JamStandar  = 40;
    TarifLembur = 20000;
var
    Gol : char;
    JamKerja, JamLembur : integer;
    GajiPokok, Lembur, Bonus, Total : longint;
    Valid : boolean;
begin
    clrscr;
    write('Golongan (A/B/C)          : ');
    readln(Gol);
    Gol := upcase(Gol);
    write('Total jam kerja per minggu: ');
    readln(JamKerja);

    Valid := true;
    case Gol of
    'A': GajiPokok := 1500000;
    'B': GajiPokok := 2000000;
    'C': GajiPokok := 2500000;
    else
    Valid := false;
    end;

    if not Valid then
    writeln('Golongan tidak valid!')
    else
    begin
    if JamKerja > JamStandar then
        JamLembur := JamKerja - JamStandar
    else
        JamLembur := 0;
    Lembur := JamLembur * TarifLembur;

    if (Gol = 'C') and (JamKerja > 50) then
        Bonus := 100000
    else
        Bonus := 0;

    Total := GajiPokok + Lembur + Bonus;

    writeln;
    writeln('===== RINCIAN GAJI =====');
    writeln('Gaji Pokok  : Rp', GajiPokok);
    writeln('Lembur (', JamLembur, ' jam): Rp', Lembur);
    writeln('Bonus       : Rp', Bonus);
    writeln('Total Gaji  : Rp', Total);
    end;
    readln;
end.
