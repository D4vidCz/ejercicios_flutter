//ejercicio 75
void main() {
  List<Map<String, dynamic>> personas = [
    {
      "nombre": "Carlos",
      "pesoAnterior": 80.0,
      "pesosActuales": [80.5, 81.0, 80.8, 81.2, 80.9, 81.1, 80.7, 81.3, 80.6, 81.0]
    },
    {
      "nombre": "Ana",
      "pesoAnterior": 65.0,
      "pesosActuales": [64.5, 64.8, 64.7, 64.9, 64.6, 64.5, 64.8, 64.7, 64.6, 64.9]
    },
    {
      "nombre": "Luis",
      "pesoAnterior": 92.0,
      "pesosActuales": [92.2, 92.3, 92.5, 92.4, 92.1, 92.3, 92.2, 92.4, 92.3, 92.5]
    },
    {
      "nombre": "María",
      "pesoAnterior": 70.0,
      "pesosActuales": [69.5, 69.8, 69.7, 69.9, 69.6, 69.7, 69.8, 69.6, 69.7, 69.8]
    },
    {
      "nombre": "Pedro",
      "pesoAnterior": 110.0,
      "pesosActuales": [110.5, 110.8, 110.6, 110.7, 110.9, 110.8, 110.7, 110.6, 110.8, 110.7]
    },
  ];

  print("===== RESULTADOS DEL PESAJE =====\n");

  for (var p in personas) {
    double promedio = p["pesosActuales"]
        .fold(0.0, (s, n) => s + n) /
        p["pesosActuales"].length;

    double diferencia = promedio - p["pesoAnterior"];

    print("Persona: ${p["nombre"]}");
    if (diferencia > 0) {
      print("→ SUBIÓ ${diferencia.toStringAsFixed(2)} kg\n");
    } else if (diferencia < 0) {
      print("→ BAJÓ ${(-diferencia).toStringAsFixed(2)} kg\n");
    } else {
      print("→ NO CAMBIÓ DE PESO\n");
    }
  }
}
