//ejercicio 5
void main(){
  double nota1 = 4.5;
  double nota2 = 3.5;
  double nota3 = 5.0;
  double examenFinal = 4.0;
  double trabajoFinal = 4.5;

  double promedioNotas = (nota1 + nota2 + nota3) / 3;
  double calificacionFinal = (promedioNotas * 0.55) + (examenFinal * 0.30) + (trabajoFinal * 0.15);

  print ("La calificación final es: ${calificacionFinal}");
}