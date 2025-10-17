import 'dart:io';

double ceksaldo(double saldo) {
  return saldo;
}

double setor(double saldo, double jumlah) {
  return saldo + jumlah;
}

double tariktunai(double saldo, double jumlah) {
  return saldo - jumlah;
}

void main() {
  double saldo = 10000;
  bool lanjut = true;

  while (lanjut) {
    print("\n=== ATM Sederhana (Dart) ===");
    print("1. Cek Saldo");
    print("2. Setor Tunai");
    print("3. Tarik Tunai");
    print("4. Transfer");
    stdout.write("Pilih Menu (1-4): ");
    String operasi = stdin.readLineSync()!;

    switch (operasi) {
      case '1':
        print("Saldo anda: Rp ${ceksaldo(saldo)}");
        break;

      case '2':
        stdout.write("Masukkan jumlah setor tunai: ");
        double jumlahsetor = double.parse(stdin.readLineSync()!);
        saldo = setor(saldo, jumlahsetor);
        print("Saldo anda setelah setor tunai: Rp $saldo");
        break;

      case '3':
        stdout.write("Masukkan jumlah tarik tunai: ");
        double jumlahtarik = double.parse(stdin.readLineSync()!);
        if (jumlahtarik > saldo) {
          print("Saldo tidak cukup!");
        } else {
          saldo = tariktunai(saldo, jumlahtarik);
          print("Saldo anda setelah tarik tunai: Rp $saldo");
        }
        break;

      case '4':
        stdout.write("Masukkan jumlah transfer: ");
        double jumlahtransfer = double.parse(stdin.readLineSync()!);
        if (jumlahtransfer > saldo) {
          print("Saldo tidak cukup!");
        } else {
          saldo = tariktunai(saldo, jumlahtransfer);
          print("Saldo anda setelah transfer: Rp $saldo");
        }
        break;

      default:
        print("Pilihan tidak valid");
    }

    stdout.write("\nApakah ingin melakukan transaksi lain? (y/n): ");
    String? pilihan = stdin.readLineSync();
    if (pilihan == null || pilihan.toLowerCase() != 'y') {
      lanjut = false;
      print("Terima kasih telah menggunakan ATM sederhana!");
    }
  }
}