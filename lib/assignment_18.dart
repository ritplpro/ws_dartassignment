void main() {
  String inputString = 'This is a test string with spaces';
  String stringWithoutSpaces = removeSpaces(inputString);

  print('Original String: $inputString');
  print('String without Spaces: $stringWithoutSpaces');
}

String removeSpaces(String str) {
  return str.replaceAll(' ', '');
}
