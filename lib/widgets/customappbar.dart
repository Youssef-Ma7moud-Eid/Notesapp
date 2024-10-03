import 'package:flutter/material.dart';
import 'package:noteapp_project/widgets/IconButtomsearch.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.text, required this.icon, this.onPressed});
  final String text;
  final IconData icon;
  final void Function()? onPressed;
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
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}
