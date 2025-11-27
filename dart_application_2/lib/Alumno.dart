//ejercicio 12
void main() {
  
  double examenMatematicas = 4.2;
  // ignore: non_constant_identifier_names
  double NotaMat1 = 3.8, NotaMat2 = 4.0, NotaMat3 = 3.3;

 
  double examenFisica = 5.0;
    // ignore: non_constant_identifier_names
  double NotaFis1 = 4.5, NotaFis2 = 3.0;


  double examenQuimica = 3.0;
    // ignore: non_constant_identifier_names
  double NotaQui1 = 2.9, NotaQui2 = 4.3, NotaQui3 = 3.8;


  double promTareasMatematicas = (NotaMat1 + NotaMat2 + NotaMat3) / 3;
  double notaMatematicas = (examenMatematicas * 0.90) + (promTareasMatematicas * 0.10);

  double promTareasFisica = (NotaFis1 + NotaFis2) / 2;
  double notaFisica = (examenFisica * 0.80) + (promTareasFisica * 0.20);

  double promTareasQuimica = (NotaQui1 + NotaQui2 + NotaQui3) / 3;
  double notaQuimica = (examenQuimica * 0.85) + (promTareasQuimica * 0.15);

  double promedioGeneral = (notaMatematicas + notaFisica + notaQuimica) / 3;


  print("Nota Matemática: ${notaMatematicas.toStringAsFixed(2)}");
  print("Nota Física: ${notaFisica.toStringAsFixed(2)}");
  print("Nota Química: ${notaQuimica.toStringAsFixed(2)}");
  print("Promedio general de las 3 materias: ${promedioGeneral.toStringAsFixed(2)}");
}
