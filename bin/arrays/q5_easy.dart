//Implement a function to find the smallest number in an array.

smallestNumber(List<int> array) {
  int minNumber = array[0];
  for (int arr in array) {
    arr < minNumber ? minNumber = arr : null;
  }
  return minNumber;
}

void main() {
  List<int> numbers = [ 9, 4, 5, 6, 7, 8, 3, 2, 10];

  int result = smallestNumber(numbers);
  print('The smallest number in this array is $result');
}