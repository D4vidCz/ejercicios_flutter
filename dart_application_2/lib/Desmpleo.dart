//ejercicio 80

void main() {
  List<Map<String, dynamic>> estados = [
    {
      "codigo": 1,
      "nombre": "Distrito Capital",
      "ciudades": [
        {
          "codigo": 101,
          "municipios": [
            {
              "codigo": 10101,
              "personas": [
                {"edad": 30, "educacion": "N", "situacion": "D"},
                {"edad": 20, "educacion": "B", "situacion": "E"},
                {"edad": 40, "educacion": "N", "situacion": "D"},
              ],
            },
            {
              "codigo": 10102,
              "personas": [
                {"edad": 26, "educacion": "S", "situacion": "D"},
                {"edad": 35, "educacion": "N", "situacion": "D"},
              ],
            },
          ],
        },
      ],
    },
    {
      "codigo": 2,
      "nombre": "Miranda",
      "ciudades": [
        {
          "codigo": 201,
          "municipios": [
            {
              "codigo": 20101,
              "personas": [
                {"edad": 28, "educacion": "N", "situacion": "D"},
                {"edad": 22, "educacion": "P", "situacion": "E"},
              ],
            },
            {
              "codigo": 20102,
              "personas": [
                {"edad": 45, "educacion": "N", "situacion": "D"},
                {"edad": 50, "educacion": "B", "situacion": "D"},
              ],
            },
          ],
        },
      ],
    },
  ];

  print("====== PERSONAS POR MUNICIPIO ======");
  Map<int, int> personasMayor50 = {};
  Map<int, int> profesionalesDesempleadosEstado = {};

  for (var estado in estados) {
    int totalProfesionalesDesempleados = 0;
    for (var ciudad in estado["ciudades"]) {
      int totalPersonasCiudad = 0;
      int conteoMunicipio = 0;

      for (var municipio in ciudad["municipios"]) {
        List<Map<String, dynamic>> personas = List<Map<String, dynamic>>.from(
          municipio["personas"],
        );
        int contador = 0;

        for (var persona in personas) {
          if (persona["situacion"] == "D" &&
              persona["educacion"] == "N" &&
              persona["edad"] > 25) {
            contador++;
          }

          if (persona["situacion"] == "D" && persona["educacion"] == "P") {
            totalProfesionalesDesempleados++;
          }
        }

        totalPersonasCiudad += personas.length;
        print(
          "Municipio ${municipio["codigo"]}: personas desempleadas, sin educación y mayores de 25: $contador",
        );

        if (contador / personas.length > 0.5) {
          personasMayor50[ciudad["codigo"]] = 1;
        }

        conteoMunicipio++;
      }
    }

    profesionalesDesempleadosEstado[estado["codigo"]] =
        totalProfesionalesDesempleados;
  }

  print(
    "\nCiudades con más del 50% de personas con las características anteriores:",
  );
  personasMayor50.keys.forEach((codigoCiudad) => print("Ciudad $codigoCiudad"));

  // Estado con mayor porcentaje de profesionales desempleados
  int estadoMayor = profesionalesDesempleadosEstado.entries
      .reduce((a, b) => a.value > b.value ? a : b)
      .key;
  print(
    "\nEstado con mayor cantidad de profesionales desempleados: $estadoMayor",
  );
}
