import 'dart:io';

void main() {
  print('Enter the radius of the circle:');
  double radius = double.parse(stdin.readLineSync()!);

  double area = calculateArea(radius);

  print('The area of the circle with radius $radius is: $area');
}

double calculateArea(double radius) {
  return 3.14 * radius * radius; // Using pi as an approximation
}
