// Write a function to find the first occurrence of an element in a sorted array.
import 'q2_q3_easy_search.dart';
void main(){
  List<int> array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final result = binarySearch(array, 0, array.length-1, 9);
  print(result);
}