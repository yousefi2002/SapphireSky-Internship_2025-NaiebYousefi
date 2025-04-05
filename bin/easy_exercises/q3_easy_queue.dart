// How do you implement a queue using a linked list?

import 'dart:io';

class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class QueueLinkedList {
  Node? front;
  Node? rear;

  void enqueue(dynamic data) {
    Node newNode = Node(data);
    if (rear == null) {
      front = rear = newNode;
    } else {
      rear!.next = newNode;
      rear = newNode;
    }
  }

  int? dequeue() {
    if (front == null) {
      print("Queue is empty");
      return null;
    }

    int value = front!.data;
    front = front!.next;

    if (front == null) {
      rear = null;
    }
    return value;
  }

  dynamic peek() {
    if (isEmpty()) {
      throw Exception("Queue is empty");
    }
    return front;
  }

  bool isEmpty() {
    return front == null;
  }

  void display() {
    if (isEmpty()) {
      print("Queue is empty");
      return;
    }
    Node? temp = front;
    while (temp != null) {
      stdout.write('${temp.data} -> ');
      temp = temp.next;
    }
    stdout.write('null');
  }
}

void main() {
  QueueLinkedList queue = QueueLinkedList();

  queue.enqueue(9);
  queue.enqueue(4);
  queue.enqueue(1);

  print("Queue elements:");
  queue.display();

  print("\nDequeued element: ${queue.dequeue()}");

  print("\nQueue after dequeue:");
  queue.display();

  final frontData = queue.peek();
  print("\nFront element: ${frontData.data}");
}
