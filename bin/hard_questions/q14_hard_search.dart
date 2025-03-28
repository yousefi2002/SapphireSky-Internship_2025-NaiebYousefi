// Implement a function to find duplicate elements in an array using a search method.

List<int> findDuplicateElements(List<int> array){
  List<int> duplicateElementsArray = [];
  Map<int,int> hashMap = {};
  for(int i = 0; i < array.length; i++){
      hashMap[array[i]] = ((hashMap[array[i]] ?? 0) + 1);
    }
  for (var value in hashMap.entries){
    if(value.value > 1){
      duplicateElementsArray.add(value.key);
    }
  }
  return duplicateElementsArray;
}

void main(){
 List<int> array = [5, 2, 3, 1, 4, 9, 6, 0, 7, 8, 10, 2, 5, 4];

 List<int> result = findDuplicateElements(array);
 print(result);
}