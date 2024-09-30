import 'package:flutter/material.dart';

class IconButtomsearch extends StatelessWidget {
  const IconButtomsearch({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Colors.white.withOpacity(0.05),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          size: 28,
        ),
      ),
    );
  }
}
