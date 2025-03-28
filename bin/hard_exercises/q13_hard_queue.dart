// // How do you implement a multi-level queue with different priorities?

class Node {
  Process process;
  Node? next;

  Node(this.process, {this.next});
}

class Process {
  String name;
  int priority;

  Process(this.name, this.priority);
}

class MultiLevelQueue {
  List<Node?> queues;

  MultiLevelQueue(int levels) : queues = List.filled(levels, null);

  void enqueue(Process process) {
    Node newNode = Node(process);
    Node? head = queues[process.priority];

    if (head == null) {
      queues[process.priority] = newNode;
    } else {
      Node? current = head;
      while (current?.next != null) {
        current = current?.next;
      }
      current?.next = newNode;
    }
  }

  Process? dequeue() {
    for (int i = 0; i < queues.length; i++) {
      if (queues[i] != null) {
        Node? head = queues[i];
        queues[i] = head?.next;
        return head?.process;
      }
    }
    return null;
  }

  bool isEmpty() {
    return queues.every((queue) => queue == null);
  }
}

void main() {
  MultiLevelQueue scheduler = MultiLevelQueue(3);

  scheduler.enqueue(Process("System Task", 0));
  scheduler.enqueue(Process("User Task 1", 1));
  scheduler.enqueue(Process("User Task 2", 1));
  scheduler.enqueue(Process("Background Task 2", 2));
  scheduler.enqueue(Process("User Task 3", 1));
  scheduler.enqueue(Process("System Task 2", 0));

  print("Queues initialized: ");
  for (int i = 0; i < scheduler.queues.length; i++) {
    Node? current = scheduler.queues[i];
    print("Priority $i:");
    while (current != null) {
      print("  ${current.process.name}");
      current = current.next;
    }
  }

  print("\nExecuting processes in order of priority: ");
  while (!scheduler.isEmpty()) {
    Process? process = scheduler.dequeue();
    print("Executing: ${process?.name}");
  }
}

