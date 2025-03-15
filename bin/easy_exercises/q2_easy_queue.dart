// Implement a queue using an array in dart.

class Queue {
  List<dynamic> queue = [];

  void enqueue(dynamic data) {
    queue.add(data);
  }

  dynamic dequeue() {
    if (isEmpty()) {
      throw Exception("Queue is empty");
    }
    return queue.removeAt(0);
  }

  dynamic peek() {
    if (isEmpty()) {
      throw Exception("Queue is empty");
    }
    return queue.first;
  }

  bool isEmpty() {
    return queue.isEmpty;
  }

  void display() {
    if (isEmpty()) {
      print("Queue is empty");
      return;
    }
    print("Queue: $queue");
  }
}

void main() {
  Queue queue = Queue();

  queue.enqueue(6);
  queue.enqueue(1);
  queue.enqueue(8);

  queue.display();

  print("Dequeued: ${queue.dequeue()}");

  queue.display();

  print("Front element: ${queue.peek()}");
}
