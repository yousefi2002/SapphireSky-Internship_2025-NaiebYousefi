factorial(int n){
  if(n == 1 || n == 0) return 1;
  return factorial(n - 1) * n;
}

void main(){
  int number = 5;
  int result = factorial(number);

  print(result);
}