//Write a function to find the largest element in an array.

largestNumber(List<int> array) {
  int maxNumber = 0;
  for (int arr in array) {
    arr > maxNumber ? maxNumber = arr : null;
  }
  return maxNumber;
}

void main() {
  List<int> numbers = [0, 1, 9, 9, 4, 5, 6, 7, 8, 3, 2, 10];

  int result = largestNumber(numbers);
  print('The largest number in this array is $result');
}
