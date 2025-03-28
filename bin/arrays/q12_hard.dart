// Write a function to find the missing number in an array of 1 to N.

missingNumber(int n, List<int> array){
  List<int> numbers = [];
  for(int i = 0; i < array.length; i++){
    if(i+1 != array[i]){
      numbers.add(i+1);
      break;
    }
  }
  return numbers;
}

void main(){
  List<int> array = [1,2,3,4,6,7];
  int n = 7;
  List<int> result = missingNumber(n, array);
  print( result);
}