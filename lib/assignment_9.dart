void main() {
  List<int> originalList = [1, 2, 3, 4, 2, 3, 5, 6, 7, 7, 8, 9, 10, 1];
  List<int> resultList = removeDuplicates(originalList);

  print('Original List: $originalList');
  print('List without Duplicates: $resultList');
}

List<int> removeDuplicates(List<int> list) {
  List<int> result = [];

  for (int i = 0; i < list.length; i++) {
    if (!result.contains(list[i])) {
      result.add(list[i]);
    }
  }

  return result;
}
