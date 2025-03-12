// Implement a function to reverse a string using a stack.

import 'q5_stack_easy.dart';

 reverseStringUsingStack(String word) {
  StackLinkedList stack = StackLinkedList();

  int i = 0;
  String reverseString = '';

  while(i < word.length){
    stack.push(word[i]);
    i++;
  }
  while(stack.top != null){
    reverseString += stack.pop()!;
  }

  return reverseString;
}

void main() {

  String word = 'hello';
  final result = reverseStringUsingStack(word);
  print(result);
}