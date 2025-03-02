// // Write a function to rearrange an array such that even numbers appear before odd numbers.

arrangeArrayBasedOnEvenOddNumbers(List<int> array){
  int temp = 0;
  for(int i = 0; i < array.length; i++){
    for(int j = 0; j < array.length-1; j++){
      if(array[j] % 2 !=0){
        temp = array[j];
        array[j] = array[j+1];
        array[j+1] = temp;
      }
    }
  }
  return array;
}

// List<int> arrangeArrayBasedOnEvenOddNumbers(List<int> array) {
//   List<int> result = [];
//
//   for (int num in array) {
//     if (num % 2 == 0) {
//       result.add(num);
//     }
//   }
//
//   for (int num in array) {
//     if (num % 2 != 0) {
//       result.add(num);
//     }
//   }
//
//   return result;
// }

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> result = arrangeArrayBasedOnEvenOddNumbers(numbers);
  print(result);
}

