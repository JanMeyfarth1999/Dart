import 'dart:io';

void main(List<String> arguments) {
  String? eingabe;
  if (arguments.length > 0) {
    eingabe = arguments[0];
  } else {
    print('Kein Argument vorhanden...');
    eingabe = stdin.readLineSync();
  }
  RegExp nurBuchstaben = RegExp(r'^[a-zA-Z]+$');
  while (eingabe == null ||
      eingabe.isEmpty ||
      !nurBuchstaben.hasMatch(eingabe)) {
    print('Eingabe ungültig, gib nur Buchstaben ein !!!');

    eingabe = stdin.readLineSync();
  }
  String komprimiert = '';
  for (int i = 0; i < eingabe.length; i++) {
    String aktuellesZeichen = eingabe[i];
    int anzahl = 1;

    while (i + 1 < eingabe.length && aktuellesZeichen == eingabe[i + 1]) {
      anzahl++;
      i++;
    }
    if(anzahl >= 3){
      komprimiert += '$anzahl$aktuellesZeichen';
    }
    else {
      komprimiert += aktuellesZeichen * anzahl;
    }
  }
  print('$komprimiert');
}
