// void main(){
//   int rows = 6;
//   List<List<int>> triangle = [];
//
//   for(int i = 0; i < rows; i++){
//     List<int> row = List.filled(i + 1, 1);
//
//     for (int j = 1; j < i; j++) {
//       row[j] = triangle[i - 1][j - 1] + triangle[i - 1][j];
//     }
//
//     triangle.add(row);
//   }
//
//   for (int i = 0; i < rows; i++) {
//     String spaces = ' ' * (rows - i-1);
//     String result = spaces + triangle[i].join(' ');
//     print(result);
//   }
// }

void main() {
  int rows = 20;
  List<List<int>> triangle = [];

  for (int i = 0; i < rows; i++) {
    List<int> row = List.filled(i + 1, 1);

    for (int j = 1; j < i; j++) {
      row[j] = triangle[i - 1][j - 1] + triangle[i - 1][j];
    }

    triangle.add(row);
  }

  int maxNumber = triangle[rows - 1][(rows - 1) ~/ 2];
  int maxLength = maxNumber.toString().length;

  for (int i = 0; i < rows; i++) {
    String spaces = '  ' * (rows - i + 1);
    String rowString = '';

    for (int j = 0; j <= i; j++) {
      int number = triangle[i][j];
      int numberLength = number.toString().length;
      int padding = maxLength - numberLength;
      rowString += '${' ' * padding}$number ';
    }

    print(spaces + rowString);
  }
}
