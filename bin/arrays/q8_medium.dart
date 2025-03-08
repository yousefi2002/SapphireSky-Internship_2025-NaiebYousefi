void rotateAnArray(List<int> array, int k) {
  k = k % array.length; // Handle cases where k > array length

  void reverse(List<int> arr, int start, int end) {
    while (start < end) {
      int temp = arr[start];
      arr[start] = arr[end];
      arr[end] = temp;
      start++;
      end--;
    }
  }

  reverse(array, 0, array.length - 1);
  reverse(array, 0, k - 1);
  reverse(array, k, array.length - 1);
}

void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6, 7];

  int k = 10;

  rotateAnArray(arr, k);
  print(arr);
}
