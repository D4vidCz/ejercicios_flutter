//ejercicio 76

void main() {
  List grupos = [
    {
      "nombre": "Grupo A",
      "alumnos": [
        {
          "nombre": "Carlos",
          "materias": [
            [4.0, 3.8, 4.2],
            [3.5, 3.8, 4.0],
            [4.5, 4.2, 4.3]
          ]
        },
        {
          "nombre": "Ana",
          "materias": [
            [3.0, 3.5, 3.2],
            [4.0, 3.9, 4.1],
            [2.8, 3.0, 2.9]
          ]
        }
      ]
    },
    {
      "nombre": "Grupo B",
      "alumnos": [
        {
          "nombre": "Luis",
          "materias": [
            [5.0, 4.8, 4.9],
            [4.2, 4.1, 4.3],
          ]
        },
        {
          "nombre": "María",
          "materias": [
            [3.8, 4.0, 3.9],
            [4.1, 4.0, 4.2],
            [3.5, 3.6, 3.4]
          ]
        }
      ]
    }
  ];

  double sumaTotalGrupos = 0;

print("====== PROMEDIOS DETALLADOS ======\n");

for (var grupo in grupos) {
print(">>> ${grupo["nombre"]}");

double sumaGrupo = 0;

for (var alumno in grupo["alumnos"]) {
  double sumaAlumno = 0;

  for (var materia in alumno["materias"]) {
  
    List<double> notas = materia.cast<double>();
    double promedioMateria = notas.reduce((a, b) => a + b) / notas.length;

    sumaAlumno += promedioMateria;
  }

  double promedioAlumno = sumaAlumno / alumno["materias"].length;

  print("- Alumno: ${alumno["nombre"]}, Promedio: "
      "${promedioAlumno.toStringAsFixed(2)}");

  sumaGrupo += promedioAlumno;
}

double promedioGrupo = sumaGrupo / grupo["alumnos"].length;

print("Promedio del grupo ${grupo["nombre"]}: "
    "${promedioGrupo.toStringAsFixed(2)}\n");

sumaTotalGrupos += promedioGrupo;

}

double promedioGeneral = sumaTotalGrupos / grupos.length;

print("====== RESULTADO GENERAL ======");
print("Promedio general de todos los grupos: "
"${promedioGeneral.toStringAsFixed(2)}");
}

