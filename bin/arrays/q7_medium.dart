// How do you merge two sorted arrays into one sorted array?

searchInArray(List<int> sortedArray1, List<int> sortedArray2) {
  List<int> merged = [];
  int i = 0, j = 0;

  while(i < sortedArray1.length && j < sortedArray2.length){

    if(sortedArray1[i] < sortedArray2[j]){
      merged.add(sortedArray1[i]);
      i++;
    }else{
      merged.add(sortedArray2[j]);
      j++;
    }
  }

  while (i < sortedArray1.length) {
    merged.add(sortedArray1[i]);
    i++;
  }

  while (j < sortedArray2.length) {
    merged.add(sortedArray2[j]);
    j++;
  }
  return merged;
}

void main() {
  List<int> array1 = [0, 2, 4, 6, 8, 10];
  List<int> array2 = [1, 3, 5, 7, 9];

  List<int> result = searchInArray(array2, array1);
  print('Your result: $result');
}
