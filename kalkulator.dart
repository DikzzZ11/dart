import 'dart:io';

double Tambah(double a, double b) => a + b;
double kurang(double a, double b) => a - b;
double kali(double a, double b) => a * b;

double bagi(double a, double b) {
  if (b == 0) {
    print("error: Tidak bisa membagi dengan nol!");
    return double.nan;
  }
  return a / b;
}

void main() {
  while (true) {
    print("\n=== kalkulator sederhana (dart) ===");
    stdout.write("Masukkan angka pertama: ");
    double angka1 = double.parse(stdin.readLineSync()!);

    
    stdout.write("Masukkan angka kedua: ");
    double angka2 = double.parse(stdin.readLineSync()!);

    
    stdout.write("\nPilih operasi (+,-,*,/): ");
    String operasi  = stdin.readLineSync()!;

  double hasil;

  switch (operasi) {
    case '+':
    hasil = Tambah(angka1, angka2);
    break;
     case '-':
    hasil = kurang(angka1, angka2);
    break;
     case '*':
    hasil = kali(angka1, angka2);
    break;
     case '/':
    hasil = bagi(angka1, angka2);
    break;
    default:
    print("Operasi tidak valid!");
    continue;
  }

  print("\nHasil: $angka1 $operasi $angka2 = $hasil");
  stdout.write("\nApakah ingin menghitung lagi? (y/n): ");
  String? lanjut = stdin.readLineSync();
  if (lanjut == null || lanjut.toLowerCase() != 'y') {
    print("Terima kasih telah menggunakan kalkulator sederhana!");
    break;
  }
  }
}