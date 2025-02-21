bubbleSort(List<int> arr){

  int temp = 0;
  for(int i = 0; i < arr.length - 1; i++){
    for(int j = 0; j < arr.length - 1 - i; j++){
      if(arr[j] > arr[j+1]){
        temp = arr[j];
        arr[j] = arr[j+1];
        arr[j+1] =  temp;
      }
    }
  }
  return arr;
}

void main(){
  List<int> numbers = [3, 2, 6, 4, 8, 5, 9, 0, 7, 1];
  List<int> sortedArray = bubbleSort(numbers);
  print(sortedArray);
}