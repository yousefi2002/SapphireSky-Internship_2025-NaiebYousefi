// Implement a function to process tasks in batches using a queue.

class Task {
  String name;

  Task(this.name);
}

class Node1 {
  Task task;
  Node1? next;

  Node1(this.task);
}

class TaskQueue {
  Node1? front;
  Node1? rear;

  void enqueue(dynamic data) {
    Node1 newNode = Node1(data);
    if (rear == null) {
      front = rear = newNode;
    } else {
      rear!.next = newNode;
      rear = newNode;
    }
  }

  dequeue() {
    if (front == null) {
      print("Queue is empty");
      return null;
    }

    var value = front?.task;
    front = front!.next;

    if (front == null) {
      rear = null;
    }
    return value;
  }

  void processBatch(int batchSize) {
    while (front != null) {
      print("\nProcessing $batchSize batch tasks...");
      for (int i = 0; i < batchSize && front != null; i++) {
        Task task = dequeue();
        print("Processing: ${task.name}");
      }
    }
  }
}

void main() {
  TaskQueue taskQueue = TaskQueue();

  taskQueue.enqueue(Task("Task 1"));
  taskQueue.enqueue(Task("Task 2"));
  taskQueue.enqueue(Task("Task 3"));
  taskQueue.enqueue(Task("Task 4"));
  taskQueue.enqueue(Task("Task 5"));
  taskQueue.enqueue(Task("Task 6"));
  taskQueue.enqueue(Task("Task 7"));
  taskQueue.enqueue(Task("Task 8"));
  taskQueue.enqueue(Task("Task 9"));
  taskQueue.enqueue(Task("Task 10"));

  taskQueue.processBatch(3);
}
