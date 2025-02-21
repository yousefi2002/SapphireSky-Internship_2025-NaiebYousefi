bool isPalindrome(String str){
  String reminder = '';
  for(int i = str.length - 1;  i >= 0; i--){
    reminder +=  str[i];
  }
  if(str == reminder) return true;

  return false;
}

void main(){
  String string = 'racecar';
  bool result = isPalindrome(string);
  print(result);
}