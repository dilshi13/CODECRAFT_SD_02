import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  
  int number = random.nextInt(100) + 1;
  int guess = 0;
  int attempts = 0;

  print("Guess the number between 1 and 100!");
  
  while (guess != number) {
    stdout.write("Enter guess: ");
    guess = int.parse(stdin.readLineSync()!);
    attempts++;

    if (guess < number) {
      print("Too low!");
    } else if (guess > number) {
      print("Too high!");
    }
  }

  print("Correct! It took you $attempts attempts.");
}
