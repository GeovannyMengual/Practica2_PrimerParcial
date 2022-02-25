import 'dart:io';

void main() {
  int pos = 0;
  int neg= 1;
  print(" Introduce el dato a covertir: ");
  String dato = stdin.readLineSync() ?? '0';
  int numero = int.parse(dato);
  while (numero > 0) {
    pos = pos + (numero % 2) * neg;
    numero = (numero / 2).floor();
    neg = neg * 10;
  }
  print("$dato su numero en binario es: $pos");
}
