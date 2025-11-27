//ejercicio 42
import 'dart:io';

void main() {
  print("Edad en años:");
  double edad = double.parse(stdin.readLineSync()!);

  print("Sexo (M/F):");
  String sexo = stdin.readLineSync()!.toUpperCase();

  print("Nivel de hemoglobina:");
  double hemoglobina = double.parse(stdin.readLineSync()!);

  // ignore: unused_local_variable
  double min = 0, max = 0;

  if (edad <= 0.083) 
     { min = 13; max = 26; }
  else if (edad <= 0.5) 
     { min = 10; max = 18; }
  else if (edad <= 1) 
     { min = 11; max = 15; }
  else if (edad <= 5) 
     { min = 11.5; max = 15; }
  else if (edad <= 10) 
     { min = 12.6; max = 15.5; }
  else if (edad <= 15) 
     { min = 13; max = 15.5; }
  else if (sexo == "F") 
     { min = 12; max = 16; }
  else if (sexo == "M") 
     { min = 14; max = 18; }

  if (hemoglobina < min) {
    print("Resultado: POSITIVO para anemia.");
  } else {
    print("Resultado: NEGATIVO (normal).");
  }
}
