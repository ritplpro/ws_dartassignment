import 'dart:io';
import 'dart:math';

void main() {
  print('Enter a number:');
  double number = double.parse(stdin.readLineSync()!);

  if (number < 0) {
    print('Square root is not defined for negative numbers.');
  } else {
    double squareRoot = calculateSquareRoot(number);

    print('The square root of $number is: $squareRoot');
  }
}

double calculateSquareRoot(double number) {
  return sqrt(number);
}
