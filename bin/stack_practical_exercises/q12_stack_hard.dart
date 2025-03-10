// Implement an LRU (Least Recently Used) cache using a stack.
import 'dart:io';
import 'q3_stack_easy.dart';


class CacheLRU {
  int cacheSize = 3;
  int currentLength = 0;

  bool isExisted(Node? top, int value) {
    while (top != null) {
      if (top.data == value) {
        return true;
      }
      top = top.next;
    }
    return false;
  }

  void prioritize(int value, StackWithLinkedList stack) {
    Node? current = stack.top;
    Node? prev;

    if (current != null && current.data == value) return;

    while (current != null) {
      if (current.data == value) {
        if (prev != null) {
          prev.next = current.next;
        }
        stack.push(value);
        return;
      }
      prev = current;
      current = current.next;
    }
  }


  int get(int value, StackWithLinkedList stack) {
    if (isExisted(stack.top, value)) {
      prioritize(value, stack);
      return value;
    }
    return -1;
  }

  void put(int value, StackWithLinkedList stack) {
    if (isExisted(stack.top, value)) {
      prioritize(value, stack);
    } else {
      if (currentLength >= cacheSize) {
        removeLeastRecentlyUsed(stack);
      }
      stack.push(value);
      currentLength++;
    }
  }

  void removeLeastRecentlyUsed(StackWithLinkedList stack) {
    Node? current = stack.top;
    Node? prev;

    while (current?.next != null) {
      prev = current;
      current = current!.next;
    }

    prev?.next = null;
    currentLength--;
  }
}

void main() {
  CacheLRU cache = CacheLRU();
  StackWithLinkedList stack = StackWithLinkedList();

  cache.put(1, stack);
  cache.put(2, stack);
  cache.put(3, stack);
  stack.displayStack();  // Output: 3 -> 2 -> 1 -> null

  print(cache.get(2, stack));  // Output: 2 (moves 2 to the top)
  stack.displayStack();  // Output: 2 -> 3 -> 1 -> null

  print(cache.get(5, stack));  // Output: -1 (not found)

  print(cache.get(1, stack));  // Output: 1
  stack.displayStack();
}

