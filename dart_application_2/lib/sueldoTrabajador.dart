
//ejercicio 9
void main() {

  double horas = 45;
  double precioHora = 6470.0;

  double sueldo = horas * precioHora;
  double descuento = sueldo * 0.20;
  double sueldoFinal = sueldo - descuento;

  print("Sueldo bruto: $sueldo");
  print("Descuento realizado al sueldo: $descuento");
  print("Sueldo neto: $sueldoFinal");
}

