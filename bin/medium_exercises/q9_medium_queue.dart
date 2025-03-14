// Implement a circular queue and explain how it works.

import 'dart:io';

class CircularQueue {
  final int size;
  List<int> queue;
  int front = -1;
  int rear = -1;

  CircularQueue(this.size) : queue = List.filled(size, 0);

  bool isFull() {
    return (rear + 1) % size == front;
  }

  bool isEmpty() {
    return front == -1;
  }

  void enqueue(int value) {
    if (isFull()) {
      print('Queue is full, cannot add $value');
      return;
    }

    if (front == -1) {
      front = rear = 0;
    } else {
      rear = (rear + 1) % size;
    }

    queue[rear] = value;
    print('$value added to the queue');
  }

  int dequeue() {
    if (isEmpty()) {
      print('Queue is empty');
      return -1;
    }

    int value = queue[front];
    if (front == rear) {
      front = rear = -1;
    } else {
      front = (front + 1) % size;
    }
    return value;
  }

  int peek() {
    if (isEmpty()) {
      print('Queue is empty');
      return -1;
    }
    return queue[front];
  }

  void display() {
    if (isEmpty()) {
      print('Queue is empty');
      return;
    }
    print('Queue elements:');
    int i = front;
    while (i != rear) {
      stdout.write('${queue[i]} -> ');
      i = (i + 1) % size;
    }
    stdout.write(queue[rear]);
  }
}

void main() {
  CircularQueue cq = CircularQueue(5);

  cq.enqueue(7);
  cq.enqueue(9);
  cq.enqueue(2);
  cq.enqueue(8);
  cq.enqueue(5);

  cq.enqueue(3);

  cq.display();

  print('\nDequeued: ${cq.dequeue()}');
  cq.display();
  print('');
  cq.enqueue(4);
  cq.display();

  print('\nPeek: ${cq.peek()}');
}
