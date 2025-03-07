import 'dart:io';
import 'dart:math';

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
  int getLength(Node? head) {
    int length = 0;
    while (head != null) {
      length++;
      head = head.next;
    }
    return length;
  }

  //
  // middleNode(){
  //   int maxLength = displayLength();
  //   int count = 1;
  //   Node? temp = head;
  //   while (temp != null ) {
  //     if((maxLength ~/ 2) == count){
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
  Node? reverseList(Node? head) {
    Node? prev;
    Node? current = head;

    while (current != null) {
      Node? next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }

    head = prev;
    return head;
  }

  // 8. How do you detect a cycle in a linked list?
  bool detectCycle() {
    Node? slow = head;
    Node? fast = head;

    while (fast != null && fast.next != null) {
      slow = slow?.next;
      fast = fast.next?.next;
      if (slow == fast) {
        return true;
      }
    }
    return false;
  }

  Node? createLinkedList(List<int> values) {
    if (values.isEmpty) return null;

    Node head = Node(values[0]);
    Node? current = head;

    for (int i = 1; i < values.length; i++) {
      current?.next = Node(values[i]);
      current = current?.next;
    }

    return head;
  }

  void printLinkedList(Node? head) {
    Node? current = head;
    while (current != null) {
      print('${current.data} -> ');
      current = current.next;
    }
    print('null');
  }

  // 9.Write a function to merge two sorted linked lists.
  Node? mergeSortedLists(Node? l1, Node? l2) {
    if (l1 == null) return l2;
    if (l2 == null) return l1;

    Node? head;
    Node? tail;

    if (l1.data < l2.data) {
      head = l1;
      l1 = l1.next;
    } else {
      head = l2;
      l2 = l2.next;
    }

    tail = head;

    while (l1 != null && l2 != null) {
      if (l1.data < l2.data) {
        tail?.next = l1;
        l1 = l1.next;
      } else {
        tail?.next = l2;
        l2 = l2.next;
      }
      tail = tail?.next;
    }

    if (l1 != null) tail?.next = l1;
    if (l2 != null) tail?.next = l2;

    return head;
  }

  // 10.How do you find the nth node from the end of a linked list?

  Node? findNthFromEnd(int n) {
    Node? first = head;
    Node? second = head;

    for (int i = 0; i < n; i++) {
      if (first == null) return null;
      first = first.next;
    }

    while (first != null) {
      first = first.next;
      second = second?.next;
    }

    return second;
  }

  // 11. Implement a function to remove duplicates from a linked list.
  void removeDuplicates() {
    if (head == null) return;

    Node? current = head;

    while (current != null) {
      Node? runner = current;

      while (runner!.next != null) {
        if (runner.next!.data == current.data) {
          runner.next = runner.next!.next;
        } else {
          runner = runner.next;
        }
      }

      current = current.next;
    }
  }

  //  12.How do you check if two linked lists intersect?
  bool doIntersect(LinkedList list2) {
    int len1 = getLength(head);
    int len2 = getLength(list2.head);

    Node? ptr1 = head;
    Node? ptr2 = list2.head;

    if (len1 > len2) {
      for (int i = 0; i < (len1 - len2); i++) {
        ptr1 = ptr1!.next;
      }
    } else {
      for (int i = 0; i < (len2 - len1); i++) {
        ptr2 = ptr2!.next;
      }
    }

    while (ptr1 != null && ptr2 != null) {
      if (ptr1 == ptr2) {
        return true;
      }
      ptr1 = ptr1.next;
      ptr2 = ptr2.next;
    }

    return false;
  }

  // 13. Write a function to find the starting point of a cycle in a linked list.
  Node? detectCycleStart() {
    Node? slow = head, fast = head;

    while (fast != null && fast.next != null) {
      slow = slow!.next;
      fast = fast.next!.next;

      if (slow == fast) {
        slow = head;

        while (slow != fast) {
          slow = slow!.next;
          fast = fast!.next;
        }
        return slow;
      }
    }
    return null;
  }

// 14. Implement a function to group even and odd nodes together in a linked list.
  void groupEvenOddByValue() {
    if (head == null || head!.next == null) return;

    Node? evenHead, evenTail, oddHead, oddTail;
    Node? current = head;

    while (current != null) {
      if (current.data % 2 == 0) {  // Even value
        if (evenHead == null) {
          evenHead = evenTail = current;
        } else {
          evenTail!.next = current;
          evenTail = evenTail.next;
        }
      } else {  // Odd value
        if (oddHead == null) {
          oddHead = oddTail = current;
        } else {
          oddTail!.next = current;
          oddTail = oddTail.next;
        }
      }
      current = current.next;
    }

    if (evenTail != null) evenTail.next = oddHead;
    if (oddTail != null) oddTail.next = null;
    head = evenHead ?? oddHead;
  }

// 15. Write a function to add two numbers represented as linked lists.
  Node? addTwoNumbers(Node? l1, Node? l2) {
    l1 = reverseList(l1);
    l2 = reverseList(l2);

    Node? result;
    Node? temp;
    int carry = 0;

    while (l1 != null || l2 != null || carry > 0) {
      int sum = (l1?.data ?? 0) + (l2?.data ?? 0) + carry;
      carry = sum ~/ 10;

      Node newNode = Node(sum % 10);
      if (result == null) {
        result = newNode;
        temp = result;
      } else {
        temp!.next = newNode;
        temp = temp.next;
      }

      l1 = l1?.next;
      l2 = l2?.next;
    }

    return reverseList(result);
  }
}

void main() {
  LinkedList linkedList = LinkedList();
  linkedList.insertAtBeginning(3);
  linkedList.insertAtBeginning(4);
  linkedList.insertAtBeginning(2);

  LinkedList linkedList2 = LinkedList();
  linkedList2.insertAtBeginning(4);
  linkedList2.insertAtBeginning(6);
  linkedList2.insertAtBeginning(5);

  LinkedList result = LinkedList();
  result.head = linkedList.addTwoNumbers(linkedList.head, linkedList2.head);

  result.display();

  // Node? list1 = linkedList.createLinkedList([1, 3, 5]);
  // Node? list2 = linkedList.createLinkedList([2, 4, 6]);
  //
  // final merge = linkedList.mergeSortedLists(list1, list2);
  // linkedList.printLinkedList(merge);

  // print(linkedList.findNthFromEnd(2)?.data);
}
