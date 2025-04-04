//  Implement an algorithm to find the square root of a number using Binary Search.

findSquareRoot(int value){
  int low = 0;
  int high = value;
  int ans = -1;

  while(low<=high){
   int root = (low+high) ~/ 2;
   int square = root * root;

   if(square == value){
     print('$root is the square root of $value');
     return true;
   }else if(square < value){
     ans = root;
     low = root + 1;
   }else{
     high =  root - 1;
   }
  }
  print('$ans is the closest integer square root of $value');
  return ans;
}
void main(){
findSquareRoot(50);
}