//ejercicio 79

void main() {
  // Lista de autores con sus libros
  List<Map<String, dynamic>> autores = [
    {
      "apellido": "García",
      "libros": [
        {"codigo": 101, "genero": "ciencia ficción", "paginas": 300},
        {"codigo": 102, "genero": "romance", "paginas": 250},
        {"codigo": 103, "genero": "acción", "paginas": 320},
      ],
    },
    {
      "apellido": "Martínez",
      "libros": [
        {"codigo": 201, "genero": "terror", "paginas": 200},
        {"codigo": 202, "genero": "ciencia ficción", "paginas": 400},
      ],
    },
    {
      "apellido": "Rodríguez",
      "libros": [
        {"codigo": 301, "genero": "romance", "paginas": 150},
        {"codigo": 302, "genero": "acción", "paginas": 220},
        {"codigo": 303, "genero": "novela", "paginas": 280},
        {"codigo": 304, "genero": "ciencia ficción", "paginas": 360},
      ],
    },
  ];

  int totalLibros = 0;
  int librosCienciaFiccion = 0;
  int librosRomance = 0;
  String autorMayorLibros = "";
  int mayorLibros = 0;

  print("====== DETALLE POR AUTOR ======");
  for (var autor in autores) {
    String apellido = autor["apellido"];
    List<Map<String, dynamic>> libros = List<Map<String, dynamic>>.from(
      autor["libros"],
    );

    int totalPaginas = 0;
    Map<String, dynamic> libroMayor = libros[0];

    for (var libro in libros) {
      totalPaginas += libro["paginas"] as int;

      // Actualizar libro con más páginas
      if (libro["paginas"] > libroMayor["paginas"]) {
        libroMayor = libro;
      }

      // Contar libros por género
      if (libro["genero"] == "ciencia ficción") librosCienciaFiccion++;
      if (libro["genero"] == "romance") librosRomance++;
    }

    print("\nAutor: $apellido");
    print("  Total de páginas escritas: $totalPaginas");
    print(
      "  Libro con más páginas: Código ${libroMayor["codigo"]}, ${libroMayor["paginas"]} páginas",
    );

    totalLibros += libros.length;

    // Autor con mayor cantidad de libros
    if (libros.length > mayorLibros) {
      mayorLibros = libros.length;
      autorMayorLibros = apellido;
    }
  }

  double porcentajeCienciaFiccion = (librosCienciaFiccion / totalLibros) * 100;

  print("\n====== ESTADÍSTICAS GENERALES ======");
  print(
    "Porcentaje de libros de ciencia ficción: ${porcentajeCienciaFiccion.toStringAsFixed(2)}%",
  );
  print(
    "Cantidad de libros de ciencia ficción y romance: ${librosCienciaFiccion + librosRomance}",
  );
  print(
    "Autor con mayor cantidad de libros: $autorMayorLibros, Cantidad de libros: $mayorLibros",
  );
}
