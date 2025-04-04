// How does Interpolation Search work? Implement it.

 interpolationSearch(List<int> array, int value) {
  int low = 0, high = array.length - 1;

  while (low <= high && value >= array[low] && value <= array[high]) {
    // Prevent division by zero and invalid access
    if (array[low] == array[high]) {
      if (array[low] == value) return low;
      return -1;
    }

    int pos = low + ((value - array[low]) * (high - low)) ~/ (array[high] - array[low]);

    if (pos < low || pos > high) break;

    if (array[pos] == value) {
      print('The element <$value> found on index $pos');
      return pos;
    } else if (array[pos] < value) {
      low = pos + 1;
    } else {
      high = pos - 1;
    }
  }

  return -1;
}
void main(){
  List<int> array = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(interpolationSearch(array, 7));
}