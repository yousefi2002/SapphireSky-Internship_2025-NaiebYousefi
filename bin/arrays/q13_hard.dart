// How do you check if two arrays are equal?

arraysEquality(List<int> array1, List<int> array2){
  if(array1.length != array2.length) return false;

    for(int i = 0; i < array1.length; i++){
      if(array1[i] != array2[i]) {
        return false;
      }
    }
  return true;
}

void main(){
  List<int> array1 = [1, 2, 3, 4, 5, 6];
  List<int> array2 = [1, 2, 3, 4, 5, 6,];

  final result = arraysEquality(array1, array2);
  print(result);
}