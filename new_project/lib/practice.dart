
import 'dart:io';

void main() {
  print("Hello Mantosh");

  stdout.write("Enter your name");
  var name = stdin.readLineSync();

  print(" you have entered $name");

}