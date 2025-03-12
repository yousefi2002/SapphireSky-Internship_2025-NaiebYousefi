// Implement a stack using an array in Dart.

class StackWithArray{
  List<int> numbers = [];
   void push(int value){
     numbers.add(value);
  }

  int pop(){
   return numbers.removeAt(numbers.length-1);
  }

  int peek(){
    return numbers[numbers.length-1];
  }
}

void main(){
  StackWithArray stack = StackWithArray();
  stack.push(2);
  stack.push(4);
  stack.push(6);
  stack.push(8);
  print(stack.numbers);

  stack.pop();
  print(stack.numbers);

  print(stack.peek());

}