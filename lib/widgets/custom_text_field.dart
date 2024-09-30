import 'package:flutter/material.dart';
import 'package:noteapp_project/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.textfield, this.size = 1});
  final String textfield;
  final int size;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kprimarycolor,
      maxLines: size,
      decoration: InputDecoration(
        hintText: textfield,

        hintStyle: const TextStyle(
          color: kprimarycolor,
          fontSize: 20,
        ),
        // contentPadding:
        //      EdgeInsets.symmetric(horizontal: size, vertical: size),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: kprimarycolor,
          ),
        ),
      ),
    );
  }
}
