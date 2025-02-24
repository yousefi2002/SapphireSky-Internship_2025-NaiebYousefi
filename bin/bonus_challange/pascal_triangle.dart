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

  // Generate Pascal's triangle
  for (int i = 0; i < rows; i++) {
    List<int> row = List.filled(i + 1, 1);

    for (int j = 1; j < i; j++) {
      row[j] = triangle[i - 1][j - 1] + triangle[i - 1][j];
    }

    triangle.add(row);
  }

  // Find the maximum number in the triangle
  int maxNumber = triangle[rows - 1][(rows - 1) ~/ 2]; // Middle element of the last row
  int maxLength = maxNumber.toString().length; // Length of the maximum number

  // Print the triangle with symmetric spacing
  for (int i = 0; i < rows; i++) {
    String spaces = ' ' * (rows - i - 1); // Leading spaces for centering
    String rowString = '';

    for (int j = 0; j <= i; j++) {
      int number = triangle[i][j];
      int numberLength = number.toString().length;
      int padding = maxLength - numberLength; // Calculate padding for symmetry
      rowString += ' ' * padding + number.toString() + ' ';
    }

    print(spaces + rowString);
  }
}