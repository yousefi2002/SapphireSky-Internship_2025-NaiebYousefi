int gcd(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}

void main() {
  int result = gcd(48, 18);
  print("GCD: $result"); // Output: GCD: 6
}
