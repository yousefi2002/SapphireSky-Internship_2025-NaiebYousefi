// How do you design a stack that supports push(), pop(), and getMin() in constant time?

import 'q3_stack_easy.dart';
import 'dart:io';

class StackWithMin {
  Node? top;
  Node? minTop;

  void push(int data) {
    Node newNode = Node(data);
    newNode.next = top;
    top = newNode;

    if (minTop == null || data <= minTop!.data) {
      Node newMinNode = Node(data);
      newMinNode.next = minTop;
      minTop = newMinNode;
    }
  }

  int? pop() {
    if (top == null) return null;

    int poppedData = top!.data;
    top = top!.next;

    if (poppedData == minTop!.data) {
      minTop = minTop!.next;
    }

    return poppedData;
  }

  int? getMin() {
    if (minTop == null) return null;
    return minTop!.data;
  }

  void displayStack() {
    Node? temp = top;
    while (temp != null) {
      stdout.write('${temp.data} -> ');
      temp = temp.next;
    }
    stdout.write('null\n');
  }
}

void main() {
  StackWithMin stack = StackWithMin();

  stack.push(5);
  stack.push(2);
  stack.push(8);
  stack.push(1);

  print('Stack:');
  stack.displayStack();

  print('Minimum: ${stack.getMin()}');

  stack.pop();
  print('After pop:');
  stack.displayStack();

  print('Minimum: ${stack.getMin()}');
}