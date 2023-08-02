// dart_lesson_day16.dart
import 'package:flutter/material.dart';
// ternary operator
int a = 16;

void main() {
  // if else version
  if (a > 15) {
    print(' The number is less than $a');
  } else {
    print(' The number is bigger than $a');
  }
  // ternary version
  a > 15
      ? print(' The number is less than $a')
      : print(' The number is bigger than $a');

  bool isBigger = a > 15 ? false : true;
  print(isBigger);
}

// stateful widget
class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}
List<int> too = [1, 2, 3,];

class _ExampleState extends State<Example> {

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
