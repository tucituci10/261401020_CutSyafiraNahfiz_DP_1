program Soal2_Login;
// repeat-until + break
uses crt;
const
    KataSandiRahasia = 'pascal123';
    MaksPercobaan    = 3;
var
    Masukan  : string;
    Percobaan: integer;
    Berhasil : boolean;
begin
    clrscr;   
    Percobaan := 0;
    Berhasil  := false;

    repeat
    Percobaan := Percobaan + 1;
    write('Masukkan kata sandi (percobaan ', Percobaan, '/', MaksPercobaan, '): ');
    readln(Masukan);

    if Masukan = KataSandiRahasia then
    begin
        Berhasil := true;
        writeln('Login Berhasil! Selamat Datang');
        break;
    end
    else
        writeln('Kata sandi salah.');
    until Percobaan >= MaksPercobaan;

    if not Berhasil then
    writeln('Akses Ditolak! Akun Terkunci.');
    readln;
end.
