
//ejercicio 11
void main(){
  String nombreTrabajador = "David Cruz";
  double horasTrabajadas = 48;
  double pagoHora = 6470.0;
  double horasExtra = 7;
  int numHijos = 2;

  double salario = horasTrabajadas * pagoHora;
  double pagoHorasExtra = pagoHora * 1.25;
  double salarioHorasExtra = horasExtra * pagoHorasExtra;
  
  double deduccionParo = 0.05 * salario;
  double deduccionVivienda = 0.02 * salario;
  double deduccionCaja = 0.07 * salario;
  double totalDeducciones = deduccionParo + deduccionVivienda + deduccionCaja;

  double asignacionActualizacion = 25000.0;
  double asignacionPorHijo = 17300.0 * numHijos;
  double primaHogar = 18000.0;
  double totalAsignaciones = asignacionActualizacion + asignacionPorHijo + primaHogar;

  double sueldoFinal = salario + salarioHorasExtra + totalAsignaciones - totalDeducciones;

    print("===== Recibo de pago del trabajador =====");
  print("Nombre: $nombreTrabajador\n");

  print("Asignaciones:");
  print(" - Salario del trabajador: $salario Bs");
  print(" - Pago por horas extras: $salarioHorasExtra Bs");
  print(" - Actualización académica: $asignacionActualizacion Bs");
  print(" - Asignación por hijos ($numHijos): $asignacionPorHijo Bs");
  print(" - Prima por hogar: $primaHogar Bs");
  print("Total asignaciones: $totalAsignaciones Bs\n");

  print("Deducciones:");
  print(" - Paro forzoso (5%): $deduccionParo Bs");
  print(" - Política habitacional (2%): $deduccionVivienda Bs");
  print(" - Caja de ahorro (7%): $deduccionCaja Bs");
  print("Total deducciones: $totalDeducciones Bs\n");

  print("Sueldo neto a pagar: $sueldoFinal Bs");
  print("=========================================");
}