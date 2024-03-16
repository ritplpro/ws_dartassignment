bool isLeapYear(int year) {
  if (year % 4 != 0) {
    return false; // Not divisible by 4, not a leap year
  } else if (year % 100 != 0) {
    return true; // Divisible by 4 but not by 100, leap year
  } else if (year % 400 == 0) {
    return true; // Divisible by 400, leap year
  } else {
    return false; // Divisible by 100 but not by 400, not a leap year
  }
}

void main() {
  int year = 2024; // Change the year here to check for a different year

  if (isLeapYear(year)) {
    print('$year is a leap year.');
  } else {
    print('$year is not a leap year.');
  }
}
