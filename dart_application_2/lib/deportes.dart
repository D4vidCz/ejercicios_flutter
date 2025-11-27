//ejercicio 35
import 'dart:io';

void main(){
  print("Ingrese la temperatura (°F): ");
  int temperatura = int.parse(stdin.readLineSync()!);

  if (temperatura > 85){
    print("Deberias practicar natacion");
  } else if (temperatura > 70 && temperatura < 85){
    print("Deberias practicar tenis");
  } else if (temperatura > 32 && temperatura < 70){
    print("Deberias practicar golf");
  } else if (temperatura > 10 && temperatura < 32) {
    print("Deberias practicar esquí");
  }else{
    print("Deberias practicar marcha");
  }
}