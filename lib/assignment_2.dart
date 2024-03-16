
import 'dart:io';
import 'dart:math';

void main() {
  print("Welcome to Rock-Paper-Scissors!");
  print("Player 1, please enter your choice (rock, paper, or scissors): ");
  String playerChoice = stdin.readLineSync()!.toLowerCase();


  if (playerChoice != "rock" && playerChoice != "paper" && playerChoice != "scissors") {
    print("Invalid choice. Please enter either rock, paper, or scissors.");
    return;
  }


  List<String> choices = ["rock", "paper", "scissors"];
  Random random = Random();
  int randomIndex = random.nextInt(choices.length);
  String computerChoice = choices[randomIndex];

  print("Computer chose: $computerChoice");

  if (playerChoice == computerChoice) {
    print("It's a tie!");
  } else if ((playerChoice == "rock" && computerChoice == "scissors") ||
      (playerChoice == "paper" && computerChoice == "rock") ||
      (playerChoice == "scissors" && computerChoice == "paper")) {
    print("Player 1 wins!");
  } else {
    print("Computer wins!");
  }
}
