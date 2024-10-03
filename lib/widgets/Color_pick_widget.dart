import 'package:flutter/material.dart';

class ColorPickWidget extends StatelessWidget {
  const ColorPickWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 2,
      ),
      width: 70,
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: Colors.blue,
      ),
    );
  }
}
