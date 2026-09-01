import 'dart:math';
import 'dart:io';

void main() {
  print('Hallo, wie oft soll ich würfeln ?');

  String? eingabe = stdin.readLineSync();
  int? eingabeWuerfel = int.tryParse(eingabe ?? '');

  while (eingabeWuerfel == null || eingabeWuerfel <= 0) {
    print('Die Eingabe war ungültig, bitte gebe eine Zahl ein !!!');
    eingabe = stdin.readLineSync();
    eingabeWuerfel = int.tryParse(eingabe ?? '');
  }

  int random(int min, int max) {
    return min + Random().nextInt(max - min);
  }

  List<int> ergebnisse = [];
  int? vorherigerWurf = null;
  bool zweiSechsen = false;
  for (int i = 0; i < eingabeWuerfel; i++) {
    int aktuellerWurf = random(1, 7);

    ergebnisse.add(aktuellerWurf);

    if (vorherigerWurf == 6 && aktuellerWurf == 6) {
      zweiSechsen = true;
      break;
    }
    vorherigerWurf = aktuellerWurf;
  }
  if (zweiSechsen == true) {
    print('Du hast zwei 6er gewürfelt !!!');
    print('Du hast ${ergebnisse.length} Würfe gebraucht.');
    print('Du hast folgenede Ergebnisse gewürfelt: $ergebnisse');
  } else {
    print('Limit erreicht. Deine Würfe: $ergebnisse');

  }
}
