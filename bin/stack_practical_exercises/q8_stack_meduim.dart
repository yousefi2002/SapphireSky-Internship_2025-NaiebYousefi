// Write a function to evaluate a postfix expression using a stack.

import 'q5_stack_easy.dart';

postfixExpression(String word) {
  StackLinkedList stack = StackLinkedList();
  List<String> str = word.split(' ');

  for (int i = 0; i < str.length; i++) {
    int? num = int.tryParse(str[i]);

    if (num != null) {
      stack.push(num.toString());
    } else {
      int second = int.parse(stack.pop() ?? '0');
      int first = int.parse(stack.pop() ?? '0');

      int result = 0;
      switch (str[i]) {
        case '+':
          result = first + second;
          break;
        case '-':
          result = first - second;
          break;
        case '*':
          result = first * second;
          break;
        case '/':
          if (second == 0) throw Exception("Division by zero");
          result = first ~/ second;
          break;
        default:
          throw Exception("Invalid operator: ${str[i]}");
      }

      stack.push(result.toString()); // Push result back to stack
    }
  }

  return int.parse(stack.pop() ?? '0');
}

void main() {
  String word = '5 4 3 + *'; // Equivalent to: 5 * (4 + 3) = 35
  final result = postfixExpression(word);
  print(result); // Output: 35
}
