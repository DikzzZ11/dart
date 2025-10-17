import 'dart:io';
 // Fungsi konversi suhu
 double celsiusToFahrenheit(double celsius) {
 return (celsius * 9 / 5) + 32;
 }
 double fahrenheitToCelsius(double fahrenheit) {
 return (fahrenheit- 32) * 5 / 9;
 }
 double celsiusToKelvin(double celsius) {
 return celsius + 273.15;
 }
 double kelvinToCelsius(double kelvin) {
 return kelvin- 273.15;
 }
 double fahrenheitToKelvin(double fahrenheit) {
 return (fahrenheit- 32) * 5 / 9 + 273.15;
 }
 double kelvinToFahrenheit(double kelvin) {
 return (kelvin- 273.15) * 9 / 5 + 32;
}
 void main() {
 while (true) {
 print("\n=== Konversi Suhu Sederhana (Dart) ===");
 print("Pilih konversi suhu:");
 print("1. Celsius");
 print("2. Fahrenheit");
 print("3. Kelvin");
 
 
 stdout.write("Masukkan pilihan (1-3): ");
 String? pilihan = stdin.readLineSync();
 if (pilihan == null || !['1', '2', '3'].contains(pilihan)) {
 print("Pilihan tidak valid! Silakan coba lagi.");
 continue;
 }
 stdout.write("Masukkan nilai suhu yang akan dikonversi: ");
 double nilaiSuhu = double.parse(stdin.readLineSync()!);
 double hasil;
switch (pilihan) {
 case '1':
 hasil = celsiusToFahrenheit(nilaiSuhu);
 print("$nilaiSuhu °C = $hasil °F");
 break;
 case '2':
 hasil = fahrenheitToCelsius(nilaiSuhu);
 print("$nilaiSuhu °F = $hasil °C");
 break;
 case '3':
 hasil = celsiusToKelvin(nilaiSuhu);
 print("$nilaiSuhu °C = $hasil K");
 break;
 case '4':
 hasil = kelvinToCelsius(nilaiSuhu);
 print("$nilaiSuhu K = $hasil °C");
 break;
 case '5':
 hasil = fahrenheitToKelvin(nilaiSuhu);
 print("$nilaiSuhu °F = $hasil K");
 break;
 case '6':
 hasil = kelvinToFahrenheit(nilaiSuhu);
 print("$nilaiSuhu K = $hasil °F");
break;
 }
 stdout.write("\nApakah Anda ingin melakukan konversi lagi? (y/n): ");
 String? lanjut = stdin.readLineSync();
 if (lanjut == null || lanjut.toLowerCase() != 'y') {
 print("Terima kasih telah menggunakan konversi suhu sederhana!");
 break;
 }
 }
 }