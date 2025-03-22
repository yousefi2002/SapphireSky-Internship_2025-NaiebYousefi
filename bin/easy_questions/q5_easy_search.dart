// 5. Write a function to check if a given number exists in a matrix.

bool findingNumberInMatrix(List<List<int>> matrix, int value) {
  for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < matrix[i].length; j++) {
      if (matrix[i][j] == value) {
        print("Targeted number <${matrix[i][j]}> exists at index [$i][$j].");
        return true;
      }
    }
  }
  return false;
}

bool binarySearchInMatrix(List<List<int>> matrix, int value) {
  int rows = matrix.length;
  int cols = matrix[0].length;
  int left = 0, right = rows * cols - 1;

  while (left <= right) {
    int mid = left + (right - left) ~/ 2;
    int midValue = matrix[mid ~/ cols][mid % cols];

    if (midValue == value) {
      print("Targeted number <$value> exists.");
      return true;
    } else if (midValue < value) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  return false;
}

void main() {
  List<List<int>> matrix = [
    [4, 7, 0],
    [3, 1, 5],
    [6, 9, 2],
  ];

  binarySearchInMatrix(matrix, 5);
  findingNumberInMatrix(matrix, 5);
}
