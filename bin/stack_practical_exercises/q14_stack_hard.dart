// Write a function to check if a given arithmetic expression is valid.

import 'q5_stack_easy.dart';

bool isValidExpression(String value) {
  StackLinkedList stack = StackLinkedList();
  Map<String, String> matchingBrackets = {")": "(", "}": "{", "]": "["};

  for (int i = 0; i < value.length; i++) {
    String char = value[i];

    if (char == "(" || char == "{" || char == "[") {
      stack.push(char);
    }
    else if (matchingBrackets.containsKey(char)) {
      if (stack.top == null || stack.top?.data != matchingBrackets[char]) {
        return false;
      }
      stack.pop();
    }
  }

  return stack.top == null;
}

void main() {
  print(isValidExpression("([{}])"));  // true
  print(isValidExpression("([)]"));    // false
  print(isValidExpression("{[()]}"));  // true
  print(isValidExpression("{[(])}"));  // false
}
