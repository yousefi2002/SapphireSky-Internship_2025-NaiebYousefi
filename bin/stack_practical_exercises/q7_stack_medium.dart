// How do you implement a stack with two queues?

class Queue {
  List<int> queue = [];

  void enqueue(int data) {
    queue.add(data);
  }

  int dequeue() {
    if (queue.isEmpty) {
      print("Queue is empty");
      return -1;
    }

    int front = queue[0];
    for (int i = 0; i < queue.length - 1; i++) {
      queue[i] = queue[i + 1];
    }
    queue.removeLast();
    return front;
  }

  int size() {
    return queue.length;
  }

  bool isEmpty() {
    return queue.isEmpty;
  }
}

class StackUsingQueues {
  Queue queue1 = Queue();
  Queue queue2 = Queue();

  void push(int data) {
    queue1.enqueue(data);
  }

  int pop() {
    if (queue1.isEmpty()) {
      print("Stack is empty");
      return -1;
    }

    while (queue1.size() > 1) {
      queue2.enqueue(queue1.dequeue());
    }

    int poppedElement = queue1.dequeue();

    Queue temp = queue1;
    queue1 = queue2;
    queue2 = temp;

    return poppedElement;
  }

  int top() {
    if (queue1.isEmpty()) {
      print("Stack is empty");
      return -1;
    }

    while (queue1.size() > 1) {
      queue2.enqueue(queue1.dequeue());
    }

    int topElement = queue1.dequeue();
    queue2.enqueue(topElement);

    Queue temp = queue1;
    queue1 = queue2;
    queue2 = temp;

    return topElement;
  }

  bool isEmpty() {
    return queue1.isEmpty();
  }
}

void main() {
  StackUsingQueues stack = StackUsingQueues();

  stack.push(1);
  stack.push(2);
  stack.push(3);

  print(stack.pop());
  print(stack.top());
  stack.push(4);
  print(stack.pop());
}
