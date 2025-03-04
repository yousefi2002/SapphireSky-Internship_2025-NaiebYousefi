// Write a function to check if a string is a palindrome.

palindrome(String str){
  String a = '';
  for(int i = 0; i< str.length; i++){
    a = str[i] + a;
  }
  return a;
}

void main(){
  String str = 'hi man.';

  String result = palindrome(str);
  if(result == str){
    print('$str is palindrome. Her is the result: $result');
  }else{
    print('$str is not palindrome. Her is the result: $result');
  }
}