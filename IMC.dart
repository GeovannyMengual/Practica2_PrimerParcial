import 'dart:io';

void main() {
  double masa_pers = 0;
  print("Ingrese peso: ");
  String dato| = stdin.readLineSync() ?? '0';
  int peso_pers = int.parse(dato|);

  print("Ingrese su altura: ");
  String dato2 = stdin.readLineSync() ?? '0';
  int est_pers = int.parse(dato2);
  double conversion = est_pers / 100;
  masa_pers = (peso_perso / (conversion * conversion));

  if (masa_pers < 18.50) {
    print("Su peso es inferior al normal");
  }

  if (masa_pers >= 18.50 && masa_pers < 24.99) {
    print("Bien, Su peso es normal");
  }

  if (masa_pers >= 25.0 && masa_pers < 29.99) {
    print("Mantente acitivo, Su Peso es superior al normal");
  }

  if (masa_pers> 30.0) {
    print("Mucho cuidado, usted tiene obesidad");
  }
  print("Su IMC es $masa_pers");
}
