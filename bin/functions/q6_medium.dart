bool checkPrime(int num) {
  if (num < 2) return false;
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) return false;
  }
  return true;
}

void main() {
  int number = 3;
  bool isPrime = checkPrime(number);
  print("$number is prime: $isPrime");
}