import 'dart:io';

void main() {
  print('Welcome to the Tip Calculator!');


  print('Enter the total bill amount:');
  double totalBill = double.parse(stdin.readLineSync()!);


  print('Enter the tip percentage:');
  double tipPercentage = double.parse(stdin.readLineSync()!);

  print('Enter the number of people:');
  int numOfPeople = int.parse(stdin.readLineSync()!);


  double tipAmount = totalBill * (tipPercentage / 100);


  double totalAmount = totalBill + tipAmount;


  double splitAmount = totalAmount / numOfPeople;


  print('Tip Amount: \$${tipAmount.toStringAsFixed(2)}');
  print('Total Amount (including tip): \$${totalAmount.toStringAsFixed(2)}');
  print('Split Amount per Person: \$${splitAmount.toStringAsFixed(2)}');
}
