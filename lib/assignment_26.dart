import 'dart:math';

int generateRandom() {
  Random random = Random();
  return random.nextInt(2) == 0 ? null : 100;
}

void main() {
  int? status = generateRandom() ?? 0;

  print('Status: $status');
}
