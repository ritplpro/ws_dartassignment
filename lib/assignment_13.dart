import 'dart:io';

void main() {
  print('Welcome to Hangman! Try to guess the word.');

  String secretWord = 'hangman';
  Set<String> guessedLetters = Set();
  int maxAttempts = 6;
  int attemptsLeft = maxAttempts;

  String currentWordState = '_ ' * secretWord.length;
  print('Current Word: $currentWordState');


  while (attemptsLeft > 0) {
    print('Enter a letter:');
    String guess = stdin.readLineSync()!.toLowerCase();


    if (guess.length != 1 || !RegExp(r'[a-z]').hasMatch(guess)) {
      print('Invalid input. Please enter a single letter.');
      continue;
    }


    if (guessedLetters.contains(guess)) {
      print('You have already guessed that letter. Try again.');
      continue;
    }


    guessedLetters.add(guess);


    if (secretWord.contains(guess)) {
      print('Correct guess!');
    } else {
      print('Incorrect guess.');
      attemptsLeft--;
      print('Attempts left: $attemptsLeft');
    }


    currentWordState = updateCurrentWordState(secretWord, guessedLetters);

    // Print current word state
    print('Current Word: $currentWordState');

    // Check if the word has been fully guessed
    if (!currentWordState.contains('_')) {
      print('Congratulations! You guessed the word: $secretWord');
      break;
    }
  }

  // If the player runs out of attempts
  if (attemptsLeft == 0) {
    print('You ran out of attempts. The word was: $secretWord');
  }
}

String updateCurrentWordState(String secretWord, Set<String> guessedLetters) {
  String updatedWordState = '';

  for (int i = 0; i < secretWord.length; i++) {
    if (guessedLetters.contains(secretWord[i])) {
      updatedWordState += secretWord[i] + ' ';
    } else {
      updatedWordState += '_ ';
    }
  }

  return updatedWordState.trim();
}
