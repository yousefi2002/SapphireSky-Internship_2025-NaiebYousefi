import 'dart:io';

main(){
  stdout.write('Enter a number to check if it is prime number: ');
  int number = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  if(isPrime(number)){
    print('$number is a prime number.');
  }else{
    print('$number is not a prime number.');
  }
}

bool isPrime(int n) {
  if (n == 1 || n == 0) return false;
  if (n <= 3) return true;
  if (n % 2 == 0 || n % 3 == 0) return false;

  for (int i = 5; i * i <= n; i += 6) {
    if (n % i == 0 || n % (i + 2) == 0) return false;
  }
  return true;
}