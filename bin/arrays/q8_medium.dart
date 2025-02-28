// Implement a function that rotates an array k times to the right.

rotateAnArray(List<int> array, int k){
  int temp = 0;
  for(int i = 0; i < k; i++){
    for(int j = array.length - 1; j > 0; j--){
      temp = array[j];
      array[j] = array[j-1];
      array[j-1] = temp;
    }
  }
  return array;
}

void main() {
  List<int> array = [7, 2, 3, 5, 7, 11];
  int rotationNumber = 2;

  List<int> result = rotateAnArray(array, rotationNumber);
  print(result);
}