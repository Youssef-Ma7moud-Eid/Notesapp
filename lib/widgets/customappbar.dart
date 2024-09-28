import 'package:flutter/material.dart';
import 'package:noteapp_project/widgets/iconsearch.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        IconButtomsearch(),
      ],
    );
  }
}
