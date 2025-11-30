//ejercicio 71
void main() {
  
  List<Map<String, dynamic>> ninos = [
    {"sexo": "M", "edad": 0, "estado": "Táchira"},
    {"sexo": "F", "edad": 2, "estado": "Distrito Capital"},
    {"sexo": "F", "edad": 5, "estado": "Táchira"},
    {"sexo": "M", "edad": 7, "estado": "Mérida"},
    {"sexo": "F", "edad": 1, "estado": "Distrito Capital"},
  ];

  int total = ninos.length;

  
  int tachira = 0, dc = 0;

  
  int g1 = 0, g2 = 0, g3 = 0, g4 = 0;

  
  int ninosM = 0, ninasF = 0;

  for (var n in ninos) {
  
    if (n["estado"] == "Táchira") tachira++;
    if (n["estado"] == "Distrito Capital") dc++;

      int e = n["edad"];
    if (e < 1) g1++;
    else if (e <= 3) g2++;
    else if (e <= 6) g3++;
    else g4++;

    
    if (n["sexo"] == "M") ninosM++;
    else ninasF++;
  }

  print("a) % Táchira: ${(tachira / total * 100).toStringAsFixed(2)}%");
  print("   % Distrito Capital: ${(dc / total * 100).toStringAsFixed(2)}%");

  print("\nb) Grupos por edad:");
  print("   Grupo 1 (<1 año): $g1");
  print("   Grupo 2 (1-3): $g2");
  print("   Grupo 3 (4-6): $g3");
  print("   Grupo 4 (>6): $g4");

  print("\nc) Cantidad niños: $ninosM (${(ninosM / total * 100).toStringAsFixed(2)}%)");
  print("   Cantidad niñas: $ninasF (${(ninasF / total * 100).toStringAsFixed(2)}%)");
}
