// import Material Dart гэдэг санг оруулж ирье
import 'package:flutter/material.dart';
import 'dart:math' as Math;

class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Transform.rotate(
            angle: 180 / Math.pi,
            child: Container(
              ///  энэ хэсэгт бичнэ үү
              ///
              width: ,
              ///
              ///
              ///


                child: Padding(
                    padding: EdgeInsets.all(50), child: _buildShinyCircle())
            )
        ),
      ),
    );
  }

  Widget _buildShinyCircle() {
    return Container(
      decoration: BoxDecoration(),
    );
  }
}
