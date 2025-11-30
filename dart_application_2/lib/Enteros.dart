//ejercicio 46
import 'dart:io';

void main(){
  print("Ingrese el valor de N: ");
  int n = int.parse(stdin.readLineSync()!); 

  print("Ingrese el valor de K: ");
  int k = int.parse(stdin.readLineSync()!); 

  if (k > n){
  print("K no puedes ser mayor que N");
  return;
  }

  for(int i = n; i >= k; i-- ){
print("\n$i");
  }
}          