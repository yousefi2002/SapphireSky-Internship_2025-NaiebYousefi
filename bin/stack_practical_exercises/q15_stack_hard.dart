// Implement a function to convert an infix expression to postfix notation.

import 'q5_stack_easy.dart';

int precedence(String op) {
  if (op == '^') return 3;
  if (op == '*' || op == '/') return 2;
  if (op == '+' || op == '-') return 1;
  return 0;
}

bool isOperator(String ch) {
  return "+-*/^".contains(ch);
}

String infixToPostfix(String infix) {
  StackLinkedList stack = StackLinkedList();
  String postfix = "";

  for (int i = 0; i < infix.length; i++) {
    String ch = infix[i];


    if (RegExp(r'[A-Za-z0-9]').hasMatch(ch)) {
      postfix += ch;
    }
    // If `(`, push to stack
    else if (ch == '(') {
      stack.push(ch);
    }
    // If `)`, pop and append until `(` is found
    else if (ch == ')') {
      while (stack.top != null && stack.top?.data != '(') {
        postfix += stack.pop() ?? '';
      }
      stack.pop();
    }

    else if (isOperator(ch)) {
      while (stack.top != null &&
          precedence(stack.top!.data) >= precedence(ch) &&
          ch != '^') {
        postfix += stack.pop() ?? '';
      }
      stack.push(ch);
    }
  }


  while (stack.top != null) {
    postfix += stack.pop() ?? '';
  }

  return postfix;
}

void main() {
  print(infixToPostfix("A+B*C"));     // ABC*+
  print(infixToPostfix("(A+B)*C"));   // AB+C*
  print(infixToPostfix("A+B*C/D-E")); // ABC*D/+E-
  print(infixToPostfix("A^B*C"));     // AB^C*
}
