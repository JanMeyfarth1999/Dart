import 'dart:io';

void main() {
  print('Hallo !');
  print('Gebe mir bitte deinen Vorname.');

  String? vorname = stdin.readLineSync();
  while (vorname == null || vorname.isEmpty) {
    print('Es ist keine Eingabe erfolgt !!');
    print('Vorname eingeben !!!');
    vorname = stdin.readLineSync();
  }
  print('Vorname: $vorname');
  print('Jetzt Nachname eingeben !');

  String? nachname = stdin.readLineSync();
  while (nachname == null || nachname.isEmpty) {
    print('Es ist keine Eingabe erfolgt !!');
    print('Nachname eingeben !!!');
    nachname = stdin.readLineSync();
  }
  print('Vollständiger Name: $vorname $nachname.');
  print('Alter eingeben.');

  String? alter = stdin.readLineSync();
  int? alterZahl = int.tryParse(alter ?? '');
  while (alterZahl == null) {
    print('Ungültige Eingabe');
    print('Gebe dein alter ein !!!');
    alter = stdin.readLineSync();
    alterZahl = int.tryParse(alter ?? '');
  }
  print('Alter: $alterZahl');
  print(
    'Wähle dein Geschlecht.\n'
    'Männlich = 1\n'
    'Weiblich = 2\n',
  );

  String? geschlecht = stdin.readLineSync();
  int? auswahlGeschlecht = int.tryParse(geschlecht ?? '');
  while (auswahlGeschlecht == null) {
    print('Es ist keine Eingabe erfolgt !!');
    print('Geschlecht Eingeben !!!');
    geschlecht = stdin.readLineSync();
    auswahlGeschlecht = int.tryParse(geschlecht ?? '');
  }
  if (auswahlGeschlecht == 1) {
    print('Geschlecht: Männlich');
  } else {
    print('Geschlecht: Weiblich');
  }
  DateTime jetzt = DateTime.now();
 
  if(alterZahl < 40){
    print('Hallo $vorname');
  }
  else if (jetzt.hour >= 5 && jetzt.hour < 11 && alterZahl >= 40 && auswahlGeschlecht == 1) {
  print('Guten Morgen Herr $vorname $nachname ');
  }
  else if (jetzt.hour >= 11 && jetzt.hour < 18 && alterZahl >= 40 && auswahlGeschlecht == 1) {
  print('Guten Tag Herr $vorname $nachname ');
  }
  else if (jetzt.hour >= 18 && jetzt.hour < 05 && alterZahl >= 40 && auswahlGeschlecht == 1) {
  print('Guten Abend Herr $vorname $nachname ');
  }
    else if (jetzt.hour >= 5 && jetzt.hour < 11 && alterZahl >= 40 && auswahlGeschlecht == 2) {
  print('Guten Morgen Frau $vorname $nachname ');
  }
  else if (jetzt.hour >= 11 && jetzt.hour < 18 && alterZahl >= 40 && auswahlGeschlecht == 2) {
  print('Guten Tag Frau $vorname $nachname ');
  }
  else if (jetzt.hour >= 18 && jetzt.hour < 05 && alterZahl >= 40 && auswahlGeschlecht == 2) {
  print('Guten Abend Frau $vorname $nachname ');
  }
}
