// Write a function to sort a stack using recursion.
import 'q3_stack_easy.dart';

void sortedInsert(StackWithLinkedList stack, int element) {
  if (stack.isEmpty() || element > stack.peek()) {
    stack.push(element);
    return;
  }

  int? temp = stack.pop();
  sortedInsert(stack, element);
  stack.push(temp!);
}

void sortStack(StackWithLinkedList stack) {
  if (stack.isEmpty()) return;

  int? topElement = stack.pop();
  sortStack(stack);
  sortedInsert(stack, topElement!);
}

void main() {
  StackWithLinkedList stack = StackWithLinkedList();
  stack.push(5);
  stack.push(1);
  stack.push(3);
  stack.push(2);
  stack.push(4);

  print("Original Stack:");
  stack.displayStack();

  sortStack(stack);

  print("Sorted Stack:");
  stack.displayStack();
}
