//ejercicio 44
import 'dart:io';

void main() {
  print("Digita el monto de la inversion:");
  double inversion = double.parse(stdin.readLineSync()!);

  print("Digita el monto de la hipoteca:");
  double hipoteca = double.parse(stdin.readLineSync()!);

  if (hipoteca > inversion) {
    print("La hipoteca no puede ser mayor que la inversión total.");
    return;
  }

  double aportePersona, aporteSocio;

  if (hipoteca < 1000000) {
    aportePersona = inversion / 2;
    aporteSocio = inversion / 2;
  } else {
    aportePersona = hipoteca + (inversion - hipoteca) / 2;
    aporteSocio = (inversion - hipoteca) / 2;
  }

  print("Aporte persona: $aportePersona");
  print("Aporte socio: $aporteSocio");
}
