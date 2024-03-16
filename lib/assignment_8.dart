void main() {
  List<int> a = [5, 10, 15, 20, 25];

  List<int> result = getFirstAndLastElements(a);

  print('Original List: $a');
  print('New List: $result');
}

List<int> getFirstAndLastElements(List<int> list) {
  if (list.isEmpty) {
    return [];
  } else {
    return [list.first, list.last];
  }
}
