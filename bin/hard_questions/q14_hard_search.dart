// Implement a function to find duplicate elements in an array using a search method.

List<int> findDuplicateElements(List<int> array) {
  List<int> duplicateElementsArray = [];
  Map<int, int> hashMap = {};

  for (int i = 0; i < array.length; i++) {
    int current = array[i];
    hashMap[current] = (hashMap[current] ?? 0) + 1;

    if (hashMap[current] == 2) {
      duplicateElementsArray.add(current);
    }
  }

  return duplicateElementsArray;
}


void main(){
 List<int> array = [5, 2, 3, 1, 4, 9, 6, 0, 7, 8, 10, 2, 5, 4];

 List<int> result = findDuplicateElements(array);
 print(result);
}