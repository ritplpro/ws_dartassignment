import 'dart:math';
import 'dart:io';

void main() {
  print('Think of a number between 0 and 100.');
  print('I will try to guess it.');

  int lowerBound = 0;
  int upperBound = 100;
  String feedback = '';

  while (feedback != 'correct') {
    int guess = generateRandomNumber(lowerBound, upperBound);
    print('Is your number $guess? (too high / too low / correct)');
    feedback = stdin.readLineSync()!.toLowerCase();

    if (feedback == 'too high') {
      upperBound = guess - 1;
    } else if (feedback == 'too low') {
      lowerBound = guess + 1;
    } else if (feedback != 'correct') {
      print('Invalid input. Please enter "too high", "too low", or "correct".');
    }
  }

  print('Hooray! I guessed your number.');
}

int generateRandomNumber(int min, int max) {
  Random random = Random();
  return min + random.nextInt(max - min + 1);
}
