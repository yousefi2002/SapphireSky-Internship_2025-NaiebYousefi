// Implement a function to find the subarray with the maximum sum (Kadane’s Algorithm).

int maxSubArraySum(List<int> numbers) {
  int maxSum = numbers[0];
  int currentSum = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    currentSum = currentSum < 0 ? numbers[i] : currentSum + numbers[i];
    maxSum = currentSum > maxSum ? currentSum : maxSum;
  }

  return maxSum;
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print("Maximum SubArray Sum: ${maxSubArraySum(numbers)}");
}
