// void main() {
//   List<List<int>> a = [
//     [1, 2],
//     [3, 4]
//   ];
//   List<List<int>> b = [
//     [3, 4],
//     [5, 6]
//   ];
//   List<List<int>> result = [];
//
//   if (a.length == b[0].length) {
//     for (int i = 0; i < a.length; i++) {
//       for (int j = 1; j < b[0].length; j++) {
//         result[i] = [(a[i][j] * b[i+1][j])];
//       }
//     }
//   }
// }

void main() {

  List<List<int>> A = [
    [1, 2],
    [3, 4]
  ];

  List<List<int>> B = [
    [5, 6],
    [7, 8]
  ];

  List<List<int>> result = multiplyMatrices(A, B);

  printMatrix(result);
}

List<List<int>> multiplyMatrices(List<List<int>> A, List<List<int>> B) {
  int rowsA = A.length;
  int colsA = A[0].length;
  int rowsB = B.length;
  int colsB = B[0].length;

  if (colsA != rowsB) {
    throw Exception("Matrix multiplication not possible. Columns of A must equal rows of B.");
  }

  List<List<int>> result = List.generate(rowsA, (_) => List.filled(colsB, 0));

  for (int i = 0; i < rowsA; i++) {
    for (int j = 0; j < colsB; j++) {
      for (int k = 0; k < colsA; k++) {
        result[i][j] += A[i][k] * B[k][j];
      }
    }
  }

  return result;
}

void printMatrix(List<List<int>> matrix) {
  for (var row in matrix) {
    print(row.join(' '));
  }
}

