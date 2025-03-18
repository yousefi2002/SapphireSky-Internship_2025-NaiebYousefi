// Implement a function to find the Kth largest element in an array using sorting.
import"q7_medium_sort.dart";
findKLargestElement(List<int> array, int k ){
  quickSort(array, 0, array.length - 1);
  int kthLargestElement = array[array.length - k];
  return kthLargestElement;
}

void main(){
  List<int> array =  [7, 10, 4, 3, 20, 15];
  print("Original array: $array");
  int k = 6;

  if(k > array.length){
    print("This array does not have $k elements");

  }else{
    int kLargestElement = findKLargestElement(array, k);

    print("Kth element is: $kLargestElement");
  }
}