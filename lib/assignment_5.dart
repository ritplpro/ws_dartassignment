void main() {
  List<int> originalList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  List<int> evenList = extractEvenNumbers(originalList);

  print("Original list: $originalList");
  print("New list with even elements: $evenList");
}

List<int> extractEvenNumbers(List<int> list) {
  List<int> evenNumbers = [];

  for (int number in list) {
    if (number % 2 == 0) {
      evenNumbers.add(number);
    }
  }

  return evenNumbers;
}
