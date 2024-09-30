import 'package:flutter/material.dart';
import 'package:noteapp_project/widgets/IconButtomsearch.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        IconButtomsearch(
          icon: icon,
        ),
      ],
    );
  }
}
