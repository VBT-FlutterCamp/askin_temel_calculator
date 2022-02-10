import 'dart:io';

void main() {
  int girilenIkinciSayi = 0;
  int girilenBirinciSayi = 0;
  int girilenOperator = 0;

  print('Bir sayı gir...');
  String? a = stdin.readLineSync();
  if (a != null) {
    girilenBirinciSayi = int.parse(a);
  }
  print('Bir işlem operatörü gir(+,-,*,/)...');
  String? c = stdin.readLineSync();
  if (c == '+') {
    girilenOperator = 1;
  } else if (c == '-') {
    girilenOperator = 2;
  } else if (c == '*') {
    girilenOperator = 3;
  } else if (c == '/') {
    girilenOperator = 4;
  } else {
    print('Geçerli bir operatör gir.');
  }
  print('Bir sayı gir...');
  String? b = stdin.readLineSync();
  if (b != null) {
    girilenIkinciSayi = int.parse(b);
  }

  islem(girilenBirinciSayi, girilenIkinciSayi, girilenOperator);
}
void islem(int a, int b, int girilenOperator) {
  switch (girilenOperator) {
    case 1:
      print(a + b);
      break;
    case 2:
      print(a - b);
      break;
    case 3:
      print(a * b);
      break;
    case 4:
      print(a / b);
      break;
    default:
      print('Bir şeyler ters gitti.');
  }
}