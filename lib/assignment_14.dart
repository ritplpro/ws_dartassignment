void main() {
  double principal = 1000;
  double rate = 5;
  double time = 3;

  double simpleInterest = calculateSimpleInterest(principal, rate, time);

  print('Principal: ${principal.toStringAsFixed(2)}');
  print('Annual Interest Rate: ${rate.toStringAsFixed(2)}%');
  print('Time Period: ${time.toStringAsFixed(2)} years');
  print('Simple Interest:${simpleInterest.toStringAsFixed(2)}');
}

double calculateSimpleInterest(double principal, double rate, double time) {

  double rateDecimal = rate / 100;


  double interest = principal * rateDecimal * time;

  return interest;
}
