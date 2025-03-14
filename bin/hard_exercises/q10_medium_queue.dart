// Implement a function to merge two queues in an alternating manner.

import '../easy_exercises/q3_easy_queue.dart';

QueueLinkedList queue1 = QueueLinkedList();
QueueLinkedList queue2 = QueueLinkedList();
QueueLinkedList result = QueueLinkedList();

mergeTwoQueue(){
  while(queue1.front != null && queue2.front != null){
    int firstValue = queue1.dequeue()!;
    int secondValue = queue2.dequeue()!;

    result.enqueue(firstValue);
    result.enqueue(secondValue);
  }
  if(queue1.front != null){
    result.enqueue(queue1.dequeue());
  }

  if(queue2.front != null){
    result.enqueue(queue2.dequeue());
  }
  return result.display();
}

void main(){
queue1.enqueue(1);
queue1.enqueue(3);
queue1.enqueue(5);
queue1.enqueue(7);

queue2.enqueue(2);
queue2.enqueue(4);
queue2.enqueue(6);
queue2.enqueue(8);
queue2.enqueue(9);

mergeTwoQueue();
}