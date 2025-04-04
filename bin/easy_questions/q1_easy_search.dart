// 1. Implement Linear Search on an array.

bool linearSearch(List<int> array, int targetNumber) {
  for (int i = 0; i < array.length; i++) {
    if (array[i] == targetNumber) {
      print("Targeted number < ${array[i]} > exist on index $i.");
      return true;
    }
  }
  return false;
}

void main(){
  List<int> array = [4, 6, 2, 3, 1, 56, 8, 7, 9, 0];
  bool result = linearSearch(array, 46);
  print(result);
}