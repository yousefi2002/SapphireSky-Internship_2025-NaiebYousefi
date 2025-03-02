// Implement a function that finds the intersection of two arrays.

intersection(List<int> array1, List<int> array2){
  List<int> intersectionArray = [];
  for(int i = 0; i < array1.length; i++){
    for(int j = 0; j < array2.length; j++){
      if(array1[i] == array2[j]){
        intersectionArray.add(array2[j]);
      }
    }
  }
  return intersectionArray;
}

void main() {
  List<int> array1 = [7, 2, 3, 5, 7, 11];
  List<int> array2 = [4, 2, 1, 5, 8, 11];

  List<int> result = intersection(array1, array2);
  print(result);
}