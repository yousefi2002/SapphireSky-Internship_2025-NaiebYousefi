// Implement a function to find the first non-repeating character in a stream of characters using a queue.

import "../easy_exercises/q3_easy_queue.dart";
QueueLinkedList queue = QueueLinkedList();

String nonRepeatingCharacter(String word){
  Map<String, int> hashMap = {};

  for(int i = 0; i < word.length; i++){
      hashMap[word[i]] = ((hashMap[word[i]] ?? 0) + 1);
  }

  for (var entry in hashMap.entries) {
    if(entry.value == 1){
      queue.enqueue(entry.key);
    }
  }
  return queue.front?.data;
}
void main(){
print(nonRepeatingCharacter('worrywo'));
}