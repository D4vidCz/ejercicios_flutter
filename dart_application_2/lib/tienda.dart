//ejercicio 4
void main(){
  double compra = 50000;
  double descuento = 0.15;

  double precioDescuento = compra * descuento;
  double precioFinal = compra - precioDescuento;

  print("El descuento del producto es de \$${precioDescuento}");
  print("El precio final con descuento es: \$${precioFinal}");
}