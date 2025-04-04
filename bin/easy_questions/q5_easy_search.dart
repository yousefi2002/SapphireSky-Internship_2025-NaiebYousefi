// 5. Write a function to check if a given number exists in a matrix.

Map<String, dynamic>? findingNumberInMatrix(List<List<int>> matrix, int value) {
  for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < matrix[i].length; j++) {
      if (matrix[i][j] == value) {
        return {
          'value': matrix[i][j],
          'row': i,
          'column': j,
        };
      }
    }
  }
  return null;
}


Map<String, dynamic>? binarySearchInMatrix(List<List<int>> matrix, int value) {
  int rows = matrix.length;
  int cols = matrix[0].length;
  int left = 0, right = rows * cols - 1;

  while (left <= right) {
    int mid = left + (right - left) ~/ 2;
    int row = mid ~/ cols;
    int col = mid % cols;
    int midValue = matrix[row][col];

    if (midValue == value) {
      return {
        'value': midValue,
        'row': row,
        'column': col,
      };
    } else if (midValue < value) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }

  return null;
}


void main() {
  List<List<int>> matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];
  int target = 5;

  var result = findingNumberInMatrix(matrix, target);
  // var result = binarySearchInMatrix(matrix, target);
  if (result != null) {
    print("Found ${result['value']} at [${result['row']}][${result['column']}]");
  } else {
    print("Value not found.");
  }
}

