import 'dart:io';

import 'node.dart';

class LinkedList {
  Node? head;

  // 2.Implement a function to insert a node at the beginning of a linked list.
  void insertAtBeginning(int data) {
    Node newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  // 3.How do you delete a node from a linked list?
  void deleteNode(int data) {
    if (head == null) return;

    if (head!.data == data) {
      head = head!.next;
      return;
    }

    Node? temp = head;
    while (temp!.next != null && temp.next!.data != data) {
      temp = temp.next!;
    }

    if (temp.next != null) {
      temp.next = temp.next!.next;
    }
  }

// 4.Write a function to traverse and print a linked list.
  void display() {
    Node? temp = head;
    while (temp != null) {
      stdout.write('${temp.data} -> ');
      temp = temp.next;
    }
    print('null');
  }

// 5.Implement a function to find the length of a linked list.
  displayLength() {
    int count = 0;
    Node? temp = head;
    while (temp != null) {
      count++;
      temp = temp.next;
    }
    return count;
  }

  //
  // middleNode(){
  //   int maxLength = displayLength();
  //   int count = 1;
  //   Node? temp = head;
  //   while (temp != null ) {
  //     if((maxLength ~/ 2) == count){
  //       // print(maxLength ~/ 2);
  //       return temp.data;
  //     }else{
  //       temp = temp.next;
  //       count++;
  //     }
  //   }
  // }

  // 6. Write a function to find the middle node of a linked list.
  Node? middleNode() {
    Node? slow = head, fast = head;

    while (fast != null && fast.next != null) {
      slow = slow!.next;
      fast = fast.next!.next;
    }
    return slow;
  }

  // 7. Implement a function to reverse a linked list.
  reversLinkedList() {
    Node? pre = head;
    Node? current = head;

    while(current?.next != null){
      pre?.next = current;
      current = current?.next;
  }
    while(current?.next == null){
      current?.next = pre;
      pre
    }
  }
}

void main() {
  LinkedList linkedList = LinkedList();
  linkedList.insertAtBeginning(7);
  linkedList.insertAtBeginning(2);
  linkedList.insertAtBeginning(6);
  linkedList.insertAtBeginning(9);
  linkedList.insertAtBeginning(1);
  linkedList.display();
  // print(linkedList.displayLength());
  // linkedList.deleteNode(2);
  // linkedList.display();
  // print(linkedList.displayLength());
  print("middle node: ${linkedList.middleNode()?.data}");
}
