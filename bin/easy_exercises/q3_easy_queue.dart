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

  dynamic dequeue() {
    if( front == null) return -1;

    dynamic removedData = front;
    front = front!.next;

    return removedData;
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

  final removed = queue.dequeue();
  print("\nDequeued element: ${removed.data}");

  print("\nQueue after dequeue:");
  queue.display();

  final frontData = queue.peek();
  print("\nFront element: ${frontData.data}");
}
