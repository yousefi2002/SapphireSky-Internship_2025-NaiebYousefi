//Write a function to count the occurrences of a specific element in an array.


searchInArray(List<int> array,int target) {
  int num = 0;
  List <int> indies = [];
  for (int i = 0; i < array.length; i++) {
    if (target == array[i]){
      num++;
      indies.add(i);
    }
  }
  return '$target is found $num times in indies $indies of the array.';
}

void main() {
  List<int> numbers = [0, 1, 9, 4, 9, 6, 7, 9, 3, 2, 10];
  int target = 9;
  String result = searchInArray(numbers, target);
  print(' $result');
}