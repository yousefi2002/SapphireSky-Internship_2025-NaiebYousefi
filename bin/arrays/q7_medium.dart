// How do you merge two sorted arrays into one sorted array?

searchInArray(List<int> sortedArray1, List<int> sortedArray2) {

  int temp = sortedArray1[0];
  for(int arr in sortedArray2){
    sortedArray1.add(arr);
  }

  for (int i = 0; i < sortedArray1.length; i++) {
    for (int j = 0; j < sortedArray1.length-1; j++) {
      if(sortedArray1[j] > sortedArray1[j+1] ){
       temp = sortedArray1[j];
       sortedArray1[j] = sortedArray1[j+1];
       sortedArray1[j+1] = temp;
      }
    }
  }
  return sortedArray1;
}

void main() {
  List<int> array1 = [0, 2, 4, 6, 8, 10];
  List<int> array2 = [1, 3, 5, 7, 9];

  List<int> result = searchInArray(array2, array1);
  print('Your result: $result');
}
