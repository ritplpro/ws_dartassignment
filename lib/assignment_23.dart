void main() {
  List<String> friendNames = [
    'Alice',
    'Bob',
    'Charlie',
    'David',
    'Emma',
    'Frank',
    'Grace'
  ];

  String nameStartingWithA =
  friendNames.firstWhere((name) => name.startsWith('A'), orElse: () => '');

  if (nameStartingWithA.isNotEmpty) {
    print('Name starting with "A" found: $nameStartingWithA');
  } else {
    print('No name starting with "A" found.');
  }
}
