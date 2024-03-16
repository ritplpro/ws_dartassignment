import 'dart:io';

void main() {
  print('Enter a number:');
  int number = int.parse(stdin.readLineSync()!);

  int square = calculateSquare(number);

  print('The square of $number is: $square');
}

int calculateSquare(int number) {
  return number * number;
}
