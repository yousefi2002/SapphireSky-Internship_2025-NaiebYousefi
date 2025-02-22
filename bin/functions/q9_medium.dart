fibonacci(int n){
  int first = 0, second = 1, next = 0;

  for(int i  = 1; i < n; i++){

    next = first + second;
    first = second;
    second = next;
  }
  return next;
}

int fib(int number){
  if(number < 2) {
    return number;
  }
  return fib( number - 1) + fib(number - 2);
}


void main(){
  int number = 10;
  int result = fibonacci(number);
  int result2 = fib(number);
  print(result2);
  print(result);
}