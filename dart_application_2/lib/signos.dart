//ejercicio 38
import 'dart:io';
void main() {
  print("Ingrese el día de nacimiento (1-31):");
  int dia = int.parse(stdin.readLineSync()!);
  print("Ingrese el mes de nacimiento (1-12):");
  int mes = int.parse(stdin.readLineSync()!);
  print("Ingrese el año de nacimiento:");
  int anioNacimiento = int.parse(stdin.readLineSync()!);

  String signo = "";

  if ((dia >= 21 && mes == 3) || (dia <= 20 && mes == 4)) {
    print( signo = "Aries");
    }
  else if ((dia >= 21 && mes == 4) || (dia <= 21 && mes == 5)){
    print( signo = "Tauro");
    }
  else if ((dia >= 22 && mes == 5) || (dia <= 21 && mes == 6)){
    print( signo = "Géminis");
    }
  else if ((dia >= 22 && mes == 6) || (dia <= 23 && mes == 7)){
    print( signo = "Cáncer");
    }
  else if ((dia >= 24 && mes == 7) || (dia <= 23 && mes == 8)){
    print( signo = "Leo");
  }
  else if ((dia >= 24 && mes == 8) || (dia <= 23 && mes == 9)){
    print( signo = "Virgo");
    }
  else if ((dia >= 24 && mes == 9) || (dia <= 23 && mes == 10)){
    print( signo = "Libra");
    }
  else if ((dia >= 24 && mes == 10) || (dia <= 22 && mes == 11)){
    print( signo = "Escorpio");
    }
  else if ((dia >= 23 && mes == 11) || (dia <= 21 && mes == 12)){
    print( signo = "Sagitario");
    }
  else if ((dia >= 22 && mes == 12) || (dia <= 20 && mes == 1)){
    print( signo = "Capricornio");
    }
  else if ((dia >= 21 && mes == 1) || (dia <= 19 && mes == 2)){
    print( signo = "Acuario");
    }
  else {
    print(signo = "Piscis");
    }

  int edad = 2025 - anioNacimiento;

  print("Signo: $signo");
  print("Edad: $edad años");
}
