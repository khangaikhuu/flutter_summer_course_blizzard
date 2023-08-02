import 'package:day_13_flutter/immutable_widget.dart';
import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("My Flutter App"),
        actions: [
          // Icons.edit
          // padding бүх талаасаа 10
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.edit),
          )
        ],
      ),
      body: const Center(
        child: AspectRatio(
          aspectRatio: 1.0,
          child: ImmutableWidget(),
        ),
      ),
      // AspectRatio гэдэг widget ашиглана. ratio нь 1.0
      drawer: Drawer(
          child: Container(
        color: Colors.lightBlue,
        // please position me in the center
        child: Center(
          child: Text("I'm a drawer"),
        ),
      )),
    );
  }
}
