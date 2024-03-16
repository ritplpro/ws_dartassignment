int differenceBetweenSquareOfSumAndSumOfSquares(int n) {
  int sumOfNumbers = (n * (n + 1)) ~/ 2; // Sum of numbers formula for 1 to n
  int squareOfSum = sumOfNumbers * sumOfNumbers;

  int sumOfSquares = (n * (n + 1) * (2 * n + 1)) ~/ 6; // Sum of squares formula for 1 to n

  return squareOfSum - sumOfSquares;
}

void main() {
  int n = 10; // Change the value of n here

  int difference = differenceBetweenSquareOfSumAndSumOfSquares(n);
  print('Difference between the square of the sum and the sum of the squares of the first $n natural numbers is: $difference');
}
