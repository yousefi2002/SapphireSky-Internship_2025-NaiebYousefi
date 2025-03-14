// How do you implement a queue using two stacks?

import 'stack.dart';

StackWithLinkedList stack1 = StackWithLinkedList();
StackWithLinkedList stack2 = StackWithLinkedList();
class ImplementQueueUsingTwoStack{
  enqueue(int data){
    stack1.push(data);
  }

  int? dequeue() {
    if (stack2.isEmpty()) {
      while (!stack1.isEmpty()) {
        stack2.push(stack1.pop()!);
      }
    }

    if (stack2.isEmpty()) {
      print("Queue is empty");
      return null;
    }

    return stack2.pop();
  }

}

void main(){
  ImplementQueueUsingTwoStack implementQueueUsingTwoStack = ImplementQueueUsingTwoStack();

  implementQueueUsingTwoStack.enqueue(7);
  implementQueueUsingTwoStack.enqueue(9);
  implementQueueUsingTwoStack.enqueue(2);
  implementQueueUsingTwoStack.enqueue(5);

  print('Stack');
  stack1.display();

  print('Removed Item: ${implementQueueUsingTwoStack.dequeue()}');
  print("After Removing");
  stack2.display();

}
