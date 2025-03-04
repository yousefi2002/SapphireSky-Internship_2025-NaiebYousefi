import 'dart:io';

import 'node.dart';
class LinkedList {
  Node? head;

  // Implement a function to insert a node at the beginning of a linked list.
  void insertAtBeginning(int data) {
    Node newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  // How do you delete a node from a linked list?
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

// Write a function to traverse and print a linked list.
  void display() {
    Node? temp = head;
    while (temp != null) {
      stdout.write('${temp.data} -> ');
      temp = temp.next;
    }
    print('null');
  }

  displayLength() {
    int count = 0;
    Node? temp = head;
    while (temp != null) {
      count++;
      temp = temp.next;
    }
    return count;
  }
}

void main(){

  LinkedList linkedList = LinkedList();
  linkedList.insertAtBeginning(7);
  linkedList.insertAtBeginning(2);
  linkedList.insertAtBeginning(6);
  linkedList.insertAtBeginning(9);
  linkedList.display();
  print(linkedList.displayLength());
  linkedList.deleteNode(2);
  linkedList.display();
  print(linkedList.displayLength());

}