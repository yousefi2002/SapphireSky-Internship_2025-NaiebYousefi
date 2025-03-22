// How do you remove spaces from a given string?

removeSpaces(String str){
  String a = '';
  for(int i = 0; i< str.length; i++){
    if(str[i] != ' '){
      a += str[i];
    }
  }
  return a;
}

void main(){
  String str = 'hi man. are you ok.';

  String result = removeSpaces(str);
  print(result);
}