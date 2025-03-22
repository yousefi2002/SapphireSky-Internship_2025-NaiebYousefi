// How do you check if an array contains a specific element?

searchInArray(List<int> array,int target) {

  for (int i = 0; i < array.length; i++) {
    if (target == array[i]){
      print('Your target number $target found on index: $i');
      return true;
    }
  }
  return false;
}

void main() {
  List<int> numbers = [0, 1, 9, 4, 5, 6, 7, 8, 3, 2, 10];
  int target = 1;
  bool result = searchInArray(numbers, target);
  print('Your search result: $result');
}