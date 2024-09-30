import 'package:flutter/material.dart';
import 'package:noteapp_project/constant.dart';

class TextButtom extends StatelessWidget {
  const TextButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: kprimarycolor,
      ),
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'Add',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
