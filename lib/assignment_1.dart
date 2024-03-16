import 'dart:io';
void main(){
  print("Enter your name: ");
  String name = stdin.readLineSync()!;

  // Prompting the user to enter their age
  stdout.write("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);

  // Calculating the number of years until they turn 100
  int yearsTo100 = 100 - age;

  // Printing out the message
  print("$name, you have $yearsTo100 years until you turn 100 years old.");

}