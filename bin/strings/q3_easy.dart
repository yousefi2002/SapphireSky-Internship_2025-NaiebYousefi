// Write a function to reverse a string.

reverseString(String str){
  String a = '';
  for(int i = 0; i< str.length; i++){
    a = str[i] + a;
  }
  return a;
}

void main(){
  String str = 'hi man. are you ok.';

  String result = reverseString(str);
  print(result);
}