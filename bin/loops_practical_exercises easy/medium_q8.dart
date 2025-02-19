
main() {

  List<int> numbers = [2, 345, 453, 395, 5, 535, 76, 100];

 int smallest = numbers[0];
 int largest = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
    if (numbers[i] < smallest) {
      smallest = numbers[i];
    }
  }
  
  print('''
  Largest Number: $largest
  Smallest Number: $smallest''');
}
