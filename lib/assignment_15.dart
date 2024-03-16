import 'dart:io';

void main() {
  print('Welcome to the BMI Calculator!');


  print('Enter your weight in kilograms:');
  double weight = double.parse(stdin.readLineSync()!);

  print('Enter your height in meters:');
  double height = double.parse(stdin.readLineSync()!);


  double bmi = calculateBMI(weight, height);


  print('Your BMI is: $bmi');

  if (bmi < 18.5) {
    print('You are underweight.');
  } else if (bmi >= 18.5 && bmi < 25) {
    print('You have a normal weight.');
  } else if (bmi >= 25 && bmi < 30) {
    print('You are overweight.');
  } else {
    print('You are obese.');
  }
}

double calculateBMI(double weight, double height) {
  return weight / (height * height);
}
