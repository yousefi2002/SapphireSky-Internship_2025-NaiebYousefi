//  Write a function to reverse an array without using the built-in reverse() method.


// reversing array using another array
reverseArray(List<int> array) {
  List<int> numbers = [];
  for (int i = array.length; i > 0; i--) {
    numbers.add(array[i - 1]);
  }
  return numbers;
}

// reversing the array itself
revers(List<int> array) {
int temp = 0;
  for (int i = 0; i < array.length; i++) {
    for(int j = 0; j < i; j++){
      temp = array [i];
      array [i] = array [j];
      array[j] = temp;
    }
  }
  return array;
}

void main() {
  List<int> numbers = [ 9, 4, 5, 6, 7, 8, 3, 2, 10];

  List result = reverseArray(numbers);
  List r = revers(numbers);
  print('$result');
  print('$r');
}