//Write a function to find the sum of all elements in an array.

sumOfAll(List<int> array) {
  int sum = 0;
  for (int arr in array) {
    sum +=arr;
  }
  return sum;
}

void main() {
  List<int> numbers = [0, 1, 9, 4, 5, 6, 7, 8, 3, 2, 10];

  int result = sumOfAll(numbers);
  print('The sum of all numbers of this array is: $result');
}
