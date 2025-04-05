// How do you design a queue that supports enqueue(), dequeue(), and getMin() in constant time?

import "../easy_exercises/q3_easy_queue.dart";
QueueLinkedList queue = QueueLinkedList();

List<int> minNumberInTheQueue = [];

void enqueue(int value) {
  Node newNode = Node(value);
  if (queue.rear == null) {
    queue.front = queue.rear = newNode;
  } else {
    queue.rear!.next = newNode;
    queue.rear = newNode;
  }

  if (minNumberInTheQueue.isEmpty || value <= minNumberInTheQueue.last) {
    minNumberInTheQueue.add(value);
  }
}

int? getMinInConstantTime(){
 if(minNumberInTheQueue.isEmpty) return null;

 return minNumberInTheQueue.last;
}

void main(){
  enqueue(8);
  enqueue(-1);
  enqueue(3);
  enqueue(6);
  print(getMinInConstantTime());
}