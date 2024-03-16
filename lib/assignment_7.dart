import 'dart:math';
import 'dart:io';

void main() {
  // Generate a random number between 1 and 100
  Random random = Random();
  int randomNumber = random.nextInt(100) + 1;

  // Prompt the user to guess the number
  print('Guess the number between 1 and 100:');
  int userGuess = int.parse(stdin.readLineSync()!);

  // Compare the user's guess with the random number
  if (userGuess < randomNumber) {
    print('Too low! The number was $randomNumber.');
  } else if (userGuess > randomNumber) {
    print('Too high! The number was $randomNumber.');
  } else {
    print('Congratulations! You guessed the number $randomNumber correctly!');
  }
}
