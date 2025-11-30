//ejercicio 62

import 'dart:math';

void main() {
  Random r = Random();

  int totalEmpresas = 100;

  int agricola = 0, industrial = 0, minera = 0, pesquera = 0, otra = 0;

  int sumaAgr = 0, sumaInd = 0, sumaMin = 0, sumaPes = 0, sumaOtr = 0;

  int totalMinera = 0;
  int mineraSur = 0;

  int indNorte = 0, indSur = 0, indEste = 0, indOeste = 0;

  for (int i = 0; i < totalEmpresas; i++) {
    int actividad = r.nextInt(5) + 1;   
    int ubicacion = r.nextInt(4) + 1;   
    int trabajadores = r.nextInt(500) + 1;

    switch (actividad) {
      case 1: 
        agricola++;
        sumaAgr += trabajadores;
        break;

      case 2: 
        industrial++;
        sumaInd += trabajadores;

        
        if (ubicacion == 1) indNorte++;
        if (ubicacion == 2) indSur++;
        if (ubicacion == 3) indEste++;
        if (ubicacion == 4) indOeste++;
        break;

      case 3: 
        minera++;
        sumaMin += trabajadores;
        totalMinera++;
        if (ubicacion == 2) mineraSur++;
        break;

      case 4: 
        pesquera++;
        sumaPes += trabajadores;
        break;

      case 5: 
        otra++;
        sumaOtr += trabajadores;
        break;
    }
  }

  print("\n=== RESULTADOS DEL EJERCICIO ===\n");

  print("I. % de empresas agrícolas: ${(agricola / totalEmpresas) * 100}%");

  print("II. % de mineras del sur: "
      "${totalMinera == 0 ? 0 : (mineraSur / totalMinera) * 100}%");

  print("\nIII. Promedio de trabajadores por actividad:");
  print(" - Agrícolas: ${(agricola == 0 ? 0 : sumaAgr / agricola).toStringAsFixed(2)}");
  print(" - Industriales: ${(industrial == 0 ? 0 : sumaInd / industrial).toStringAsFixed(2)}");
  print(" - Mineras: ${(minera == 0 ? 0 : sumaMin / minera).toStringAsFixed(2)}");
  print(" - Pesqueras: ${(pesquera == 0 ? 0 : sumaPes / pesquera).toStringAsFixed(2)}");
  print(" - Otras: ${(otra == 0 ? 0 : sumaOtr / otra).toStringAsFixed(2)}");

  int maxInd = indNorte;
  String zona = "Norte";

  if (indSur > maxInd) { maxInd = indSur; zona = "Sur"; }
  if (indEste > maxInd) { maxInd = indEste; zona = "Este"; }
  if (indOeste > maxInd) { maxInd = indOeste; zona = "Oeste"; }

  print("\nIV. Zona con más empresas industriales: $zona");
}
