import 'dart:io';

void main() {
  stdout.write("Nama Karyawan: ");
  String? namaKaryawan = stdin.readLineSync();

  stdout.write("Jumlah Jam Kerja per Minggu: ");
  int jamKerja = int.parse(stdin.readLineSync()!);

  stdout.write("Upah per Jam: ");
  double upahPerJam = double.parse(stdin.readLineSync()!);

  stdout.write("Apakah Karyawan Tetap? (ya/tidak): ");
  String? statusInput = stdin.readLineSync();
  bool statusKaryawan = statusInput?.toLowerCase() == "ya";

  double gajiKotor = jamKerja * upahPerJam;

  double pajak = statusKaryawan ? 0.10 * gajiKotor : 0.05 * gajiKotor;

  double gajiBersih = gajiKotor - pajak;

  print("\n====== SLIP GAJI KARYAWAN ======");
  print("Nama Karyawan : $namaKaryawan");
  print("Status        : ${statusKaryawan ? "Tetap" : "Kontrak"}");
  print("Gaji Kotor    : Rp ${gajiKotor.toStringAsFixed(2)}");
  print("Pajak         : Rp ${pajak.toStringAsFixed(2)}");
  print("Gaji Bersih   : Rp ${gajiBersih.toStringAsFixed(2)}");
}
