// Implement Bucket Sort and explain its applications.

// this is my approach

// void makeBuckets(List<int> array) {
//   if (array.isEmpty) return;
//
//   int minValue = array.reduce(min);
//   int maxValue = array.reduce(max);
//
//   int bucketCount = sqrt(array.length).ceil();
//   int bucketRange = ((maxValue - minValue) / bucketCount).ceil();
//
//   if (bucketRange == 0) bucketRange = 1;
//
//   List<List<int>> buckets = List.generate(bucketCount, (_) => []);
//
//   for (var num in array) {
//     int index = ((num - minValue) / bucketRange).floor();
//     if (index >= bucketCount) index = bucketCount - 1;
//     buckets[index].add(num);
//   }
//
//   // Sort and merge buckets
//   array.clear();
//   for (var bucket in buckets) {
//     bubbleSort(bucket);
//     array.addAll(bucket);
//   }
// }
//
// void main() {
//   List<int> array = [42, 32, 25, 57, 12, 79, 66, 83, 4, 91];
//   makeBuckets(array);
//   print(array);
// }

// i got it from internet
void bucketSort(List<double> arr) {
  if (arr.isEmpty) return;

  int n = arr.length;
  List<List<double>> buckets = List.generate(n, (_) => []);

  for (double num in arr) {
    int bucketIndex = (n * num).toInt();
    buckets[bucketIndex].add(num);
  }

  for (List<double> bucket in buckets) {
    bucket.sort();
  }

  // Concatenate all buckets into the original array
  int index = 0;
  for (List<double> bucket in buckets) {
    for (double num in bucket) {
      arr[index++] = num;
    }
  }
}

void main() {
  List<double> arr = [0.42, 0.32, 0.33, 0.52, 0.37, 0.47, 0.51];
  print("Original array: $arr");

  bucketSort(arr);
  print("Sorted array: $arr");
}
