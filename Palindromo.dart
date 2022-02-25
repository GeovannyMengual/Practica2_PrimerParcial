import 'dart:io';

void main() {
  print(' Introducir una frase!!: ');
  String? p = stdin.readLineSync();
  int n_palab = p!.split(' ').length;
  p = p.replaceAll(" ", "").toLowerCase();
  String? invertir = p.split('').reversed.join('');
  if (p == invertir) {
    print('oh! Esta palabra SI es palindromo, Numero de palabras: $n_palab');
  } else {
    print('oh no! Esta palabra NO es palindromo');
  }
  print(invertir);
}
