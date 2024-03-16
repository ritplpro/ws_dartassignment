void main() {
  List<int> originalList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> oddList = getOddElements(originalList);
  print('Original List: $originalList');
  print('Odd Elements: $oddList');
}

List<int> getOddElements(List<int> list) {
  return list.where((element) => element.isOdd).toList();
}
