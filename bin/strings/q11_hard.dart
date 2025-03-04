// Implement a function to find the longest palindrome substring in a string.

String longestPalindrome(String s) {
  if (s.isEmpty) return "";

  int start = 0, maxLength = 1;
  int n = s.length;

  void expandAroundCenter(int left, int right) {
    while (left >= 0 && right < n && s[left] == s[right]) {
      if (right - left + 1 > maxLength) {
        start = left;
        maxLength = right - left + 1;
      }
      left--;
      right++;
    }
  }

  for (int i = 0; i < n; i++) {
    expandAroundCenter(i, i);
    expandAroundCenter(i, i + 1);
  }

  return s.substring(start, start + maxLength);
}

void main() {
  print(longestPalindrome("babad"));
  print(longestPalindrome("cbbd"));
}
