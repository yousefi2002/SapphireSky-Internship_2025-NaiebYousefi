void pascalTriangle(int rows) {
  List<List<int>> triangle = [];

  for (int i = 0; i < rows; i++) {
    List<int> row = List.filled(i + 1, 1);

    for (int j = 1; j < i; j++) {
      row[j] = triangle[i - 1][j - 1] + triangle[i - 1][j];
    }

    triangle.add(row);
  }

  for (int i = 0; i < rows; i++) {
    String spaces = ' ' * (rows - i);
    print(spaces + triangle[i].join(' '));
  }
}

void main() {
  pascalTriangle(9);
}
