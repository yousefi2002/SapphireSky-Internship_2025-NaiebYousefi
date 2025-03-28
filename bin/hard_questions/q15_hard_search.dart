// How do you efficiently find the median of two sorted arrays?

import 'dart:math';

double findMedianSortedArrays(List<int> array1, List<int> array2) {
  if (array1.length > array2.length) {
    return findMedianSortedArrays(array2, array1);
  }

  int x = array1.length, y = array2.length;
  int low = 0, high = x;

  while (low <= high) {
    int partitionX = (low + high) ~/ 2;
    int partitionY = ((x + y + 1) ~/ 2) - partitionX;

    double maxLeftX = (partitionX == 0) ? double.negativeInfinity : array1[partitionX - 1].toDouble();
    double minRightX = (partitionX == x) ? double.infinity : array1[partitionX].toDouble();

    double maxLeftY = (partitionY == 0) ? double.negativeInfinity : array2[partitionY - 1].toDouble();
    double minRightY = (partitionY == y) ? double.infinity : array2[partitionY].toDouble();

    if (maxLeftX <= minRightY && maxLeftY <= minRightX) {
      if ((x + y) % 2 == 0) {
        return (max(maxLeftX, maxLeftY) + min(minRightX, minRightY)) / 2;
      } else {
        return max(maxLeftX, maxLeftY);
      }
    } else if (maxLeftX > minRightY) {
      high = partitionX - 1;
    } else {
      low = partitionX + 1;
    }
  }

  throw Exception("Median cannot be found.");
}

void main() {
  List<int> array1 = [1, 3, 8, 9];
  List<int> array2 = [7, 9, 10, 11];
  print(findMedianSortedArrays(array1, array2));
}
