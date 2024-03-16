import 'dart:math';
import 'dart:io';

void main() {
  print('Welcome to the Cows and Bulls game!');
  print('Try to guess the 4-digit number.');

  // Generate a random 4-digit number
  Random random = Random();
  int randomNumber = random.nextInt(9000) + 1000;

  // Convert the random number to a list of digits
  List<int> digits = randomNumber.toString().split('').map(int.parse).toList();

  int cows = 0;
  int bulls = 0;
  int attempts = 0;

  while (cows < 4) {
    print('Enter your guess:');
    String input = stdin.readLineSync()!;

    // Validate input
    if (input.length != 4 || !input.runes.every((c) => c >= 48 && c <= 57)) {
      print('Invalid input. Please enter a 4-digit number.');
      continue;
    }

    List<int> guess = input.split('').map(int.parse).toList();

    cows = 0;
    bulls = 0;

    // Check for cows and bulls
    for (int i = 0; i < digits.length; i++) {
      if (digits[i] == guess[i]) {
        cows++;
      } else if (digits.contains(guess[i])) {
        bulls++;
      }
    }

    attempts++;

    // Print feedback
    print('Cows: $cows Bulls: $bulls');
  }

  print('Congratulations! You guessed the number $randomNumber correctly in $attempts attempts.');
}
