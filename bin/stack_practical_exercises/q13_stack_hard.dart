// How do you implement a stack using only one queue?

import 'dart:io';
import 'q3_stack_easy.dart';

class StackWithSingleQueue {
  Node? front;
  Node? rear;

  void push(int data) {
    Node newNode = Node(data);

    if (front == null) {
      front = newNode;
      rear = newNode;
    } else {

      rear?.next = newNode;
      rear = newNode;

      changeQueueToStack();
    }
  }

  Node? pop() {
    if (front == null) {
      rear = null;
      print("Stack is empty");
      return null;
    }

    Node? temp = front;
    front = front?.next;

    return temp;
  }

  void changeQueueToStack() {
    if (front == null) return;
    Node? prev;
    Node? current = front;

    while (current?.next != null) {
      prev = current;
      current = current?.next;
    }
    if (prev != null) {
      prev.next = null;
      rear?.next = front;
      front = rear;
      rear = prev;
    }
  }

  void displayStack() {
    Node? temp = front;
    while (temp != null) {
      stdout.write('${temp.data} -> ');
      temp = temp.next;
    }
    stdout.write('null\n');
  }
}

void main() {
  StackWithSingleQueue singleQueue = StackWithSingleQueue();
  singleQueue.push(4);
  singleQueue.push(9);
  singleQueue.push(3);
  singleQueue.push(1);

  singleQueue.displayStack();
}
