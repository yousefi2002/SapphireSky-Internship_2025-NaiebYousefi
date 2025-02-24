
void main() {
  print("Prime numbers from 1 to 100:");

  for (int num = 2; num <= 100; num++) {
    bool isPrime = true;

    for (int i = 2; i * i <= num; i++) {
      if (num % i == 0) {
        isPrime = false;
        break;
      }
    }

    if (isPrime) {
      print(num);
    }
  }
}
