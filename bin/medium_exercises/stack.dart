import 'dart:io';

import '../easy_exercises/q3_easy_queue.dart';
class StackWithLinkedList {
  Node? top;

  bool isEmpty() {
    return top == null;
  }

  void push(int data) {
    Node newNode = Node(data);
    newNode.next = top;
    top = newNode;
  }

  int? pop() {
    if (isEmpty()) {
      print("Stack is empty");
      return null;
    }
    int poppedValue = top!.data;
    top = top!.next;
    return poppedValue;
  }

  int? peek() {
    if (isEmpty()) {
      print("Stack is empty");
      return null;
    }
    return top!.data;
  }

  void display() {
    if (isEmpty()) {
      print("Stack is empty");
      return;
    }
    Node? temp = top;
    while (temp != null) {
      stdout.write('${temp.data} -> ');
      temp = temp.next;
    }
    print('null');
  }
}