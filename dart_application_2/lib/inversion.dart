//ejercicio 24

void main() {
  double capital = 50000;     
  double tasaInteres = 10;     

  double intereses = capital * (tasaInteres / 100);

  double montoFinal;

  if (intereses > 7000) {
    montoFinal = capital + intereses;
    print("Los intereses son mayores a 7000, deberias reinvertir.");
  } else {
    montoFinal = capital;
    print("Los intereses no superan 7000, no deberias reinvierten.");
  }

  
  print("Intereses generados: \$${intereses}");
  print("Monto final en la cuenta: \$${montoFinal}");
}
