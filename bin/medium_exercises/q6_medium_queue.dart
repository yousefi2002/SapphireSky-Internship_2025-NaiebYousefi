// Implement a function to reverse a queue.
import '../easy_exercises/q3_easy_queue.dart';

QueueLinkedList queue = QueueLinkedList();

// recursively reverse
void reverseQueue() {
  if (queue.isEmpty()) return;

  int frontValue = queue.dequeue()!;
  reverseQueue();
  queue.enqueue(frontValue);
}

// without recursive reverse
void reverseQueue2() {
  Node? prev;
  Node? current = queue.front;
  Node? next;

  while (current != null) {
    next = current.next;
    current.next = prev;
    prev = current;
    current = next;
  }

  var temp = queue.front;
  queue.front = queue.rear;
  queue.rear = temp;
}

void main() {
  queue.enqueue(7);
  queue.enqueue(9);
  queue.enqueue(2);
  queue.enqueue(5);

  print("Original Queue:");
  queue.display();

  reverseQueue();
  print("\nReversed Queue:");
  queue.display();

  reverseQueue2();
  print("\nReverse Again");
  queue.display();
}
