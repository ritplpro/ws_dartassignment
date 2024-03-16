void main() {
  print('Enter a character:');
  String input = stdin.readLineSync()!;

  if (input.length != 1) {
    print('Please enter only one character.');
    return;
  }

  String char = input.toLowerCase();

  if (isVowel(char)) {
    print('$char is a vowel.');
  } else {
    print('$char is a consonant.');
  }
}

bool isVowel(String char) {
  return 'aeiou'.contains(char);
}
