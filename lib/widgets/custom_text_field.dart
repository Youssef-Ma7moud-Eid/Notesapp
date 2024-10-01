import 'package:flutter/material.dart';
import 'package:noteapp_project/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.textfield, this.size = 1, this.onsaveed});
  final String textfield;
  final int size;
  final void Function(String?)? onsaveed;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaveed,
      validator: (data) {
        if (data?.isEmpty ?? true) {
          return ' Field is required';
        } else {
          return null;
        }
      },
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
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
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
