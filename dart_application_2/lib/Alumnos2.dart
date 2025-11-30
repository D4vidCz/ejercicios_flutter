//ejercicio 63

import 'dart:math';

void main() {
  Random r = Random();

  int total = 100;

  int hombres = 0, mujeres = 0;
  int edadH = 0, edadM = 0;

  int soltero = 0, casado = 0, union = 0;

  int esp1 = 0, esp2 = 0, esp3 = 0;

  int mujeresAdultas = 0;
  int hombresJovenes = 0;

  int hombresSolteros = 0, mujeresSolteras = 0;

  for (int i = 0; i < total; i++) {
    int edad = r.nextInt(40) + 15; 
    int sexo = r.nextInt(2);       
    int estado = r.nextInt(3) + 1; 
    int esp = r.nextInt(3) + 1;    

    if (sexo == 0) {
      hombres++;
      edadH += edad;
      if (estado == 1) hombresSolteros++;
      if (edad < 21 && edad > 17) hombresJovenes++;
    } else {
      mujeres++;
      edadM += edad;
      if (estado == 1) mujeresSolteras++;
      if (edad > 21) mujeresAdultas++;
    }


    if (estado == 1) {
      soltero++;
      }
    else if (estado == 2) {
      casado++;
      }
    else {
      union++;
      }

    
    if (esp == 1) esp1++;
    if (esp == 2) esp2++;
    if (esp == 3) esp3++;
  }

  print("Promedio edad mujeres: ${mujeres == 0 ? 0 : edadM / mujeres}");
  print("Promedio edad hombres: ${hombres == 0 ? 0 : edadH / hombres}");
  print("Hombres: $hombres  Mujeres: $mujeres");

  print("% Solteros: ${(soltero / total) * 100}%");
  print("% Casados: ${(casado / total) * 100}%");
  print("% Unión libre: ${(union / total) * 100}%");

  print("Especialidad 1: $esp1  (${(esp1 / total) * 100}%)");
  print("Especialidad 2: $esp2  (${(esp2 / total) * 100}%)");
  print("Especialidad 3: $esp3  (${(esp3 / total) * 100}%)");

  print("% Mujeres adultas: ${(mujeresAdultas / total) * 100}%");
  print("% Hombres jóvenes: ${(hombresJovenes / total) * 100}%");

  print("Hombres solteros: $hombresSolteros");
  print("Mujeres solteras: $mujeresSolteras");
}
