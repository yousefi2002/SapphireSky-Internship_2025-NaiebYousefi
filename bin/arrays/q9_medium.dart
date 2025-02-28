int secondLargestNumber(List<int> arr) {

  if (arr.length < 2) {
    throw Exception("Array must have at least two elements.");
  }

  int maxNumber = arr[0];
  int secondMaxNumber = arr[0];

  for (int i = 1; i < arr.length; i++) {
    if (arr[i] > maxNumber) {
      secondMaxNumber = maxNumber;
      maxNumber = arr[i];
    } else if (arr[i] > secondMaxNumber && arr[i] < maxNumber) {
      secondMaxNumber = arr[i];
    }
  }

  return secondMaxNumber;
}

void main() {
  List<int> array = [7, 2, 4, 6, 8, 17, 1, 3, 5, 7, 11];

  int result = secondLargestNumber(array);
  print(result);
}
