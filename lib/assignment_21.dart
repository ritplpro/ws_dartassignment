import 'dart:io';

void main() {
  print('Enter the number for which you want to generate multiplication table:');
  int number = int.parse(stdin.readLineSync()!);

  printMultiplicationTable(number);
}

void printMultiplicationTable(int number) {
  for (int i = 1; i <= 10; i++) {
    print('$number * $i = ${number * i}');
  }
}
