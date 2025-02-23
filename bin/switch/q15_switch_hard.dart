import 'dart:io';

void musicController(String command) {
  switch (command.toLowerCase()) {
    case 'play':
      print("Music is now playing.");
      break;
    case 'pause':
      print("Music is paused.");
      break;
    case 'next':
      print("Skipping to next track.");
      break;
    case 'previous':
      print("Going back to previous track.");
      break;
    default:
      print("Invalid command. Please enter Play, Pause, Next, or Previous.");
  }
}

void main() {
  stdout.write("Enter command (Play, Pause, Next, Previous): ");
  String command = stdin.readLineSync()?.trim() ?? "";
  musicController(command);
}
