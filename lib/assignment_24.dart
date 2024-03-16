void main() {
  Map<String, String> contacts = {
    'Alice': '1234',
    'Bob': '56789',
    'Charlie': '123456',
    'David': '987654321',
    'Emma': '9876'
  };

  Iterable<String> keysWithLengthFour = contacts.keys.where((key) => key.length == 4);

  print('Keys with length 4:');
  keysWithLengthFour.forEach(print);
}
