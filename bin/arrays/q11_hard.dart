// How do you remove duplicates from an array efficiently?

//***************** this is not as much efficient as we need

// removeDuplicates(List<int> array) {
// List<int> unique = [];
//   for (int i = 0; i < array.length; i++) {
//     bool exist = false;
//
//     for (int j = i+1; j < array.length; j++) {
//       if(array[i] == array[j]){
//         exist = true;
//         break;
//       }
//     }
//     if(!exist){
//       unique.add(array[i]);
//     }
//   }
//   return unique;
// }

//***************** this is much more efficient

removeDuplicate2(List<int> array){
  Map<int, bool> hashMap = {};
  List<int> unique = [];

    for (int i = 0; i < array.length; i++) {
      if(!hashMap.containsKey(array[i])){
        hashMap[array[i]] = true;
        unique.add(array[i]);
      }
  }
  return unique;
}

void main() {
  List<int> array = [2, 5, 3, 3, 4, 6, 4, ];

  List<int> result = removeDuplicate2(array);
  print(result);
}
