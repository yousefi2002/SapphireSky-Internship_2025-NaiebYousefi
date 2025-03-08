fibonacci(int n){
  int first = 0, second = 1, next = 0;

  for(int i  = 1; i < n; i++){

    next = first + second;
    first = second;
    second = next;
  }
  return next;
}

void main(){
  int number = 10;
  int result = fibonacci(number);
  print(result);
}