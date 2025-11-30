//ejercicio 65

void main() {
  String nombre = "Empleado X";
  String cedula = "123456";

  String tipo = "administrativo";
  int hijos = 3;
  int asistencia = 29;

  int basico = (tipo == "obrero")
      ? 100000
      : (tipo == "administrativo")
          ? 165500
          : 250000;

  double aporteHijos = (hijos > 5 ? 5 : hijos) * (basico * 0.10);
  double asistenciaOK = (asistencia > 28) ? basico * 0.05 : 0;
  double cajaAhorro = basico * 0.10;
  double seguro = basico * 0.02;

  double neto = basico + aporteHijos + asistenciaOK - cajaAhorro - seguro;

  print("Empleado: $nombre – Cédula: $cedula");
  print("Básico: $basico");
  print("Caja ahorro: $cajaAhorro");
  print("Seguro: $seguro");
  print("Sueldo neto: $neto");
}
