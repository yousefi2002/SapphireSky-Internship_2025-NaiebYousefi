//  Implement Ternary Search and compare it with Binary Search.

bool ternarySearch(List<int> array, int numberToSearch) {
  int low = 0, high = array.length - 1;

  while (low <= high) {
    int midPoint1 = low + (high - low) ~/ 3;
    int midPoint2 = high - (high - low) ~/ 3;

    if (array[midPoint1] == numberToSearch) {
      print("Your targeted value <$numberToSearch> was found on index $midPoint1");
      return true;
    }
    if (array[midPoint2] == numberToSearch) {
      print("Your targeted value <$numberToSearch> was found on index $midPoint2");
      return true;
    }

    if (numberToSearch < array[midPoint1]) {
      high = midPoint1 - 1;
    } else if (numberToSearch > array[midPoint2]) {
      low = midPoint2 + 1;
    } else {
      low = midPoint1 + 1;
      high = midPoint2 - 1;
    }
  }

  print('The targeted number <$numberToSearch> does not exist !!!');
  return false;
}

void main() {
  List<int> array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  ternarySearch(array, 64);
}

//Comparison with Binary Search:
// Binary Search divides the search space into two halves and eliminates one half in each step.
//
// Ternary Search divides the search space into three parts, reducing the search space by two-thirds at a time.
//
// Efficiency:
//
// Binary Search has a time complexity of O(log₂ N).
//
// Ternary Search has a time complexity of O(log₃ N).
//
// Since log₂ N is smaller than log₃ N, Binary Search is generally faster in most cases.
//
// Ternary Search is rarely used in practical applications unless a trinary decision-making scenario is required.
