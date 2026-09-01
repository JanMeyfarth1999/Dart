import 'dart:io';

void main(List<String> arguments) {
  String? eingabe;
  if (arguments.length > 0) {
    eingabe = arguments[0];
  } else {
    print('Kein Argument vorhanden...');
    eingabe = stdin.readLineSync();
  }

  while (eingabe == null || eingabe.isEmpty) {
    print('Es wurde nichts eingegeben !!!');
    eingabe = stdin.readLineSync();
  }
  String dekomprimiert = '';

  RegExp nurBuchstaben = RegExp(r'^[a-zA-Z]+$');

  for (int i = 0; i < eingabe.length; i++) {
    if (int.tryParse(eingabe[i]) != null) {
      String zahlText = '';
      zahlText += eingabe[i];

      while (i + 1 < eingabe.length && int.tryParse(eingabe[i + 1]) != null) {
        i++;
        zahlText += eingabe[i];
      }
      if (!(i + 1 < eingabe.length)) {
        print(
          'Ungültige Eingabe: Nach einer Zahl muss ein Buchstabe folgen !!!',
        );
        return;
      }
      if (!nurBuchstaben.hasMatch(eingabe[i + 1])) {
        print('Ungültiges Zeichen');
        return;
      }
      int zahlZahl = int.parse(zahlText);
      i++;
      dekomprimiert += eingabe[i] * zahlZahl;
    } else {
      if (!nurBuchstaben.hasMatch(eingabe[i])) {
        print('Ungültiges Zeichen');
        return;
      }
      dekomprimiert += eingabe[i];
    }
  }
  print('$dekomprimiert');
}
