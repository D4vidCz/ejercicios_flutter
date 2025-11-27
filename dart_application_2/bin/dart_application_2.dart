import 'package:dart_application_2/dart_application_2.dart' as dart_application_2;
import 'package:dart_application_2/dart_application_2.dart';



class CuentaBancaria {
  String titular;
  double balance;

  CuentaBancaria(this.titular, this.balance);

  void depositar(double monto) {
    balance += monto;
  }

  void retirar(double monto) {
    if (monto <= balance) {
      balance -= monto;
    } else {
      print("Fondos insuficientes");
    }
  }
}

void main() {
  var cuenta = CuentaBancaria("David", 500);
  cuenta.depositar(200);
  cuenta.retirar(100);
  cuenta.retirar(700);
  print(cuenta.balance);
  print(cuenta.titular);
}


