reverseString(String str){

  String reminder = '';
  for(int i = str.length - 1;  i >= 0; i--){
    reminder +=  str[i];
  }
  return reminder;
}

builtInMethodForReversingString (String str){
  return str.split('').reversed.join();
}

void main(){
  String string = 'Hi, flutter developer';
  String reverseStr = reverseString(string);
  print(reverseStr);
  print(builtInMethodForReversingString(string));
}