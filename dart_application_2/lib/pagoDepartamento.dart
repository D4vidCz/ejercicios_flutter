//ejercicio 29
void main() {
  double dep1 = 200000;   
  double dep2 = 120000;   
  double dep3 = 180000;   
  double salario = 30000; 

  double totalVentas = dep1 + dep2 + dep3;
  double limite = totalVentas * 0.33;

  double pagoDep1;
  double pagoDep2;
  double pagoDep3;

  
  if (dep1 > limite) {
    pagoDep1 = salario + (salario * 0.20); 
  } else {
    pagoDep1 = salario;
  }

  
  if (dep2 > limite) {
    pagoDep2 = salario + (salario * 0.20);
  } else {
    pagoDep2 = salario;
  }

  
  if (dep3 > limite) {
    pagoDep3 = salario + (salario * 0.20);
  } else {
    pagoDep3 = salario;
  }

  print("Departamento 1 recibe: $pagoDep1");
  print("Departamento 2 recibe: $pagoDep2");
  print("Departamento 3 recibe: $pagoDep3");
}
