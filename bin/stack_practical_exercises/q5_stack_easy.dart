class Node2 {
  String data;
  Node2? next;

  Node2(this.data);
}

class StackLinkedList {
  Node2? top;

  void push(String data) {
    Node2 newNode = Node2(data);
    newNode.next = top;
    top = newNode;
  }

  String? pop() {
    if (top == null) return null;
    Node2? temp = top;
    top = top?.next;
    return temp?.data;
  }
}

bool balanceParentheses(String word) {
  StackLinkedList stack = StackLinkedList();

  for (int i = 0; i < word.length; i++) {
    if (word[i] == '(') {
      stack.push(word[i]);
    } else if (word[i] == ')') {
      if (stack.top == null) return false;
      stack.pop();
    }
  }

  return stack.top == null;
}

void main() {
  String word = 'hello(i am (noor) amir).';
  final result = balanceParentheses(word);
  print(result);
}
