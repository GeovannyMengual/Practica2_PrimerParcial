import 'dart:io';

void main() {
  int num_h = 120;
  int hora_ex= 175;
  int salario_pers = 0;
  int aviso = 0;
  int i = 0;
  print("Datos del empleado");
  var persona = stdin.readLineSync();

  while (i < 5) {
    i = i + 1;
    print("Cuantas horas ha laborado el empleado : $persona : ");
    String personaSTRING = stdin.readLineSync() ?? '0';
    int h = int.parse(personaSTRING);
    if (h >= 27 && h < 41) {
      salario_pers= num_h * h; 
      print(
          "El siguiente empleado : $persona ha laborado $h Horas , Por lo tanto su Salario que le corresponde es :$salario_pers ");
    } else if (h > 40) {
      salario_pers = num_h * 40;
      int max_ext = h - 40;
      int ex_h = max_ext * hora_ex; 
      salario_pers = salario_pers + ex_h;
      print(
          "El siguiente empleado : $persona ha laborado $h Horas , Por lo tanto su Salario que le corresponde es :$salario_pers ");
    } else if (h < 27) {
      aviso = aviso + 1;
      print(
          "El siguente empleado : $persona ha laborado $h Horas , Por lo tanto NO cumple con las horas solicitadas. Se le levantara un acta administrativa");
    }
    if (aviso >= 2) {
      print(
          "Querido Empleado : $persona por medio de la presente le informamos que usted esta oficialmente fuera de nuestra empresa por no cumplir con las horas adecuadas.");
      break;
    }
  }
}
