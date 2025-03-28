// Implement a function to find the minimum element in a stack in constant time.

import 'q3_stack_easy.dart';

StackWithLinkedList mainStack = StackWithLinkedList();
StackWithLinkedList minStack = StackWithLinkedList();

int? minimumElement({int? number}) {
  if (number != null) {
    mainStack.push(number);

    if (minStack.top == null || number <= minStack.top!.data) {
      minStack.push(number);
    }
  }

  return minStack.top?.data;
}

void main() {
  minimumElement(number: 4);
  minimumElement(number: 8);
  minimumElement(number: 6);
  minimumElement(number: 1);
  minimumElement(number: -1);

  print("Minimum Element: ${minimumElement()}");
}
