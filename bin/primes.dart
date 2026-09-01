import 'dart:io';
import 'dart:math';

void main() {
  print(
    'Hallo, gebe eine Zahl ein und ich gebe dir alle Primzahlen bis zu dieser Zahl.',
  );
  String? eingabe = stdin.readLineSync();
  int? eingabeZahl = int.tryParse(eingabe ?? '');

  while (eingabeZahl == null || eingabeZahl < 2) {
    print('Ungültige Eingabe !!');
    eingabe = stdin.readLineSync();
    eingabeZahl = int.tryParse(eingabe ?? '');
  }
  for (int i = 2; i <= eingabeZahl; i++) {
    bool istPrimzahl = true;
    for (int teiler = 2; teiler <= sqrt(i); teiler++) {
      if (i % teiler == 0) {
        istPrimzahl = false;
        break;
      }
    }
    if (istPrimzahl == true) {
      print(i);
    }
  }
}
