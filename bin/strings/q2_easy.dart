// How do you count the number of vowels in a string?

countVowelInString(String str){
  int vowelCount = 0;
  String vowels = "aeiouAEIOU";
  for(int i = 0; i< str.length; i++){
    if(vowels.contains(str[i])){
      vowelCount++;
    }
  }
  return vowelCount;
}

void main(){
  String str = 'hi man. you are good.';

  int result = countVowelInString(str);
    print('The String << $str >> has $result ${result > 1 ? 'vowels': 'vowel'}.');

}
