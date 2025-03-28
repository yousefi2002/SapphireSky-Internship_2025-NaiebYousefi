// 8. Write a function to search for a word in a 2D grid.

class WordSearch {
  List<List<String>> grid;
  List<List<bool>>? visited;
  int rows, cols;

  WordSearch(this.grid)
      : rows = grid.length,
        cols = grid.isNotEmpty ? grid[0].length : 0;

  bool exist(String word) {
    visited = List.generate(rows, (_) => List.generate(cols, (_) => false));

    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        if (_dfs(i, j, word, 0)) {
          return true;
        }
      }
    }
    return false;
  }

  bool _dfs(int i, int j, String word, int index) {
    if (index == word.length) return true;
    if (i < 0 || j < 0 || i >= rows || j >= cols || visited![i][j] || grid[i][j] != word[index]) {
      return false;
    }

    visited![i][j] = true;

    bool found = _dfs(i + 1, j, word, index + 1) ||
        _dfs(i - 1, j, word, index + 1) ||
        _dfs(i, j + 1, word, index + 1) ||
        _dfs(i, j - 1, word, index + 1);

    visited![i][j] = false;
    return found;
  }
}

void main() {
  List<List<String>> grid = [
    ['A', 'B', 'C', 'E'],
    ['S', 'F', 'C', 'S'],
    ['A', 'D', 'E', 'E']
  ];

  WordSearch ws = WordSearch(grid);
  print(ws.exist("ABCCED"));
  print(ws.exist("SEE"));
  print(ws.exist("ABCB"));
}