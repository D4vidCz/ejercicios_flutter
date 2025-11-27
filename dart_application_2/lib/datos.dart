//ejercicio 26
void main(){
  int A = 4; int B = 5; int C = 3; int D = 8;

  if (D == 0){
    int resultado = (A - C) * (A - C);
    print("El resultado es $resultado");
  }else if (D > 0){
    int resultado2 = (A - B) * (A - B) * (A - B);
    print("El resultado es $resultado2");
  } else{
    int resultado3 = 0;
    print("El resultado es $resultado3");
  }
}