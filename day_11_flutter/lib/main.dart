import 'package:flutter/material.dart';

void main() {
  print('Day 11 Flutter application');
  // widget зүйл үзнэ

  const MaterialApp myApp = MaterialApp(
      home: Center(
    child: Text(
      'Hello Blizzard',
      style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 24),
    ),
  ));

  MaterialApp myNextApp = MaterialApp(
      title: 'Word Find Game',
      theme: ThemeData(fontFamily: 'Ribeye'),
      home: const Scaffold(
        body: Center(
          child: Text(
            'Hello Blizzard',
            style: TextStyle(fontSize: 24, color: Color(0x84b234FF)),
          ),
        ),
      ));

  final MyNiceApp temuujin = MyNiceApp();
  runApp(temuujin);
}

class MyNiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Nice App',
      theme: ThemeData(fontFamily: 'Ribeye'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Nice App '),
        ),
        body: Container(
          child: Center(
            child: Text(
              'Hello Blizzard',
              style: TextStyle(fontSize: 24, color: Color(0xfff33322)),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Image.asset(
            'assets/thumb.png',
            width: 200,
          ),
        ),
      ),
    );
  }
}
