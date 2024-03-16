import 'dart:io';

void main() {
  print('Enter a long string containing multiple words:');
  String input = stdin.readLineSync()!;

  String reversedString = reverseWords(input);

  print('Reversed String: $reversedString');
}

String reverseWords(String input) {
  List<String> words = input.split(' ');
  List<String> reversedWords = words.reversed.toList();
  return reversedWords.join(' ');
}
