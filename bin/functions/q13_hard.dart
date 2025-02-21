
String decimalToBinary(int n) {
  if (n == 0) return "0";

  String binary = "";
  while (n > 0) {
    binary = (n % 2).toString() + binary; 
    n ~/= 2;
  }
  return binary;
}

void main() {
  int decimalNumber = 25;
  print("Binary of $decimalNumber: ${decimalToBinary(decimalNumber)}");
}
