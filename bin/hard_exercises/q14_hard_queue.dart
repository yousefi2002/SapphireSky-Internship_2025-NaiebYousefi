// Write a function to simulate a printer queue with different priorities.

import 'dart:collection';

class PrintJob {
  String name;
  int priority;

  PrintJob(this.name, this.priority);
}

class PrinterQueue {
  List<Queue<PrintJob>> queues;

  PrinterQueue(int levels) : queues = List.generate(levels, (_) => Queue());

  void enqueue(PrintJob printQueue) {
    try{
      queues[printQueue.priority].add(printQueue);
    }catch(e){
      print('No (${printQueue.priority}) priority');
    }
  }



  PrintJob? dequeue() {
    for (var queue in queues)
    {
      if (queue.isNotEmpty) {
        return queue.removeFirst();
      }
    }
    return null;
  }

  bool isEmpty() {
    return queues.every((queue) => queue.isEmpty);
  }
}

void main() {
  PrinterQueue scheduler = PrinterQueue(3);

  scheduler.enqueue(PrintJob("Document a", 0));
  scheduler.enqueue(PrintJob("Document b", 1));
  scheduler.enqueue(PrintJob("Document c", 3));
  scheduler.enqueue(PrintJob("Document d", 2));
  scheduler.enqueue(PrintJob("Document e", 2));
  scheduler.enqueue(PrintJob("Document f", 0));

  while (!scheduler.isEmpty()) {
    PrintJob? printQueue = scheduler.dequeue();
    print("Executing: ${printQueue?.name}");
  }
}