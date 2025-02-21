List<int> findUnique(List<int> arr) {
  Map<int, int> frequency = {};

  for (int i = 0; i < arr.length; i++) {
    int num = arr[i];
    frequency[num] = (frequency[num] ?? 0) + 1;
  }

  List<int> uniqueElements = [];

  for (int i = 0; i < arr.length; i++) {
    int num = arr[i];
    if (frequency[num] == 1) {
      uniqueElements.add(num);
    }
  }

  return uniqueElements;
}

void main(){
  List<int> input = [1, 2, 2, 3, 4, 4, 5];
  List<int>  result = findUnique(input);

  print(result);
}