//  Implement Jump Search and compare it with Binary Search.

//Binary Search:
// Repeatedly divides the sorted array into halves to locate the target.
// Works only on sorted arrays.
//
// Jump Search:
// Jumps ahead by fixed steps and then does a linear search in a smaller block where the target may exist.
// Also requires a sorted array.
//

//  Use Case & Efficiency
// Binary Search:
//
// Most efficient for sorted arrays.
// Requires random access (like arrays).
// Not suitable for linked lists.
//
// Jump Search:
//
// Also works only on sorted arrays.
// Better than linear search, but slower than binary search.
// Sometimes used on linked lists where binary search isn't efficient due to lack of random access.


// Feature	              Binary Search	     Jump Search
// Requires Sorting	      ✅ Yes	           ✅ Yes
// Time Complexity	      O(log n)	         O(√n)
// Space Complexity	      O(1) (iterative)	 O(1)
// Random Access Needed  	✅ Yes	           ❌ Not mandatory
// Typical Use	          Arrays	           Arrays or linked lists

import 'dart:math';

jumpSearch(List<int> array, int targetValue){
  int n = array.length;
  int step = sqrt(n).toInt();
  int prev = 0;

  while (array[min(step, n) - 1] < targetValue) {
    prev = step;
    step += sqrt(n).toInt();
    if (prev >= n) return -1;
  }

  for (int i = prev; i < min(step, n); i++) {
    if (array[i] == targetValue) {
      print("The targeted number <$targetValue> found on index $i");
      return i;
    }
  }

  return -1;
}

void main(){
  List<int> array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  jumpSearch(array, 5);
}