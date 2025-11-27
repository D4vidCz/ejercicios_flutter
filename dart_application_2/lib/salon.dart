//ejercicio 6
void main(){
  int numeroHombres = 25;
  int numeroMujeres = 18;

  int totalSalon = numeroHombres + numeroMujeres;
  double porcentajeHombres = (numeroHombres / totalSalon) * 100;
  double porcentajeMujeres = (numeroMujeres / totalSalon) * 100;

  print("El porcentaje de hombres en el salón es: ${porcentajeHombres}%");
  print("El porcentaje de mujeres en el salón es: ${porcentajeMujeres}%");


}