import 'package:flutter/material.dart';
import 'package:noteapp_project/widgets/custom_text_field.dart';
import 'package:noteapp_project/widgets/text_buttom.dart';

class Addnotebuttomsheet extends StatelessWidget {
  const Addnotebuttomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: const Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CustomTextField(textfield: 'Title'),
            SizedBox(
              height: 20,
            ),
            CustomTextField(textfield: 'Content', size: 5),
            SizedBox(
              height: 60,
            ),
            TextButtom(),
          ],
        ),
      ),
    );
  }
}
