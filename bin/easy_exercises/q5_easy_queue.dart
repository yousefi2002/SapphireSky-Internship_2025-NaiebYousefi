// Write a function to check if a queue is empty.

import 'q3_easy_queue.dart';

QueueLinkedList queue = QueueLinkedList();

bool isEmpty() {
  return queue.front == null;
}

void main(){
  bool checkEmpty = isEmpty();
  print(checkEmpty);
}
