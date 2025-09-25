import 'dart:io';

double tambah(double a, double b) {
  return a + b;
}

double kurang(double a, double b) {
  return a - b;
}

double kali(double a, double b) {
  return a * b;
}

double bagi(double a, double b) {
  if (b == 0) {
    print("Error!");
    return double.nan;
  } else {
    return a / b;
  }
}

double modulus(double a, double b) {
  if (b == 0) {
    print("Error!");
    return double.nan;
  } else {
    return a % b;
  }
}

void menu() {
  print("Pilih operator:");
  print("1. Penjumlahan (+)");
  print("2. Pengurangan (-)");
  print("3. Perkalian (*)");
  print("4. Pembagian (/)");
  print("5. Modulus (%)");
  print("6. Keluar");
}

void kalkulator() {
  while (true) {
    menu();
    stdout.write("Masukkan pilihan (1/2/3/4/5/6): ");
    String pilihan = stdin.readLineSync()!;

    if (pilihan == '6') {
      break;
    }

    stdout.write("Masukkan angka pertama: ");
    double num1 = double.parse(stdin.readLineSync()!);

    stdout.write("Masukkan angka kedua: ");
    double num2 = double.parse(stdin.readLineSync()!);

    switch (pilihan) {
      case '1':
        print("$num1 + $num2 = ${tambah(num1, num2)}");
        break;
      case '2':
        print("$num1 - $num2 = ${kurang(num1, num2)}");
        break;
      case '3':
        print("$num1 * $num2 = ${kali(num1, num2)}");
        break;
      case '4':
        double hasilBagi = bagi(num1, num2);
        if (!hasilBagi.isNaN) {
          print("$num1 / $num2 = $hasilBagi");
        }
        break;
      case '5':
        double hasilModulus = modulus(num1, num2);
        if (!hasilModulus.isNaN) {
          print("$num1 % $num2 = $hasilModulus");
        }
        break;
      default:
        print("Pilihan tidak valid!");
    }
  }
}

void main() {
  kalkulator();
}
