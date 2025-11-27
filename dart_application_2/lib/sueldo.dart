//ejercicio 3
void main(){
  double sueldoBase = 150000.0;
  double comisiones = 0.10;

  int venta1 = 30000;
  int venta2 = 50000;
  int venta3 = 20000;

  double ganancias = (venta1 + venta2 + venta3) * comisiones;
  double sueldoTotal = sueldoBase + ganancias;

  print("El sueldo total es: \$${sueldoTotal}");
print("Las comisiones de este mes son: ${ganancias}");
  
}