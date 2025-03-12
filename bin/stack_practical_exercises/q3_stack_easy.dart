// How do you implement a stack using a linked list?

import 'dart:io';

class Node {
  int data;
  Node? next;

  Node(this.data);
}

class StackWithLinkedList {
  Node? top;

  void push(int data) {
    Node newNode = Node(data);
    newNode.next = top;
    top = newNode;
  }

  int? pop() {
    Node? temp = top;
    top = top?.next;
    return temp?.data;
  }
  bool isEmpty() {
    return top == null;
  }

  int peek() {
    if (top == null) {
      throw Exception("Stack is empty");
    }
    return top!.data;
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
  StackWithLinkedList stack = StackWithLinkedList();

  stack.push(1);
  stack.push(3);
  stack.push(5);
  stack.push(7);

  stack.displayStack();
  print('The top value: ${stack.peek()}');


  print('Deleted value from the stack: ${stack.pop()}');

  stack.displayStack();

  print('The top value: ${stack.peek()}');
}
