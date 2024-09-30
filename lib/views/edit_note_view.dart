import 'package:flutter/material.dart';
import 'package:noteapp_project/widgets/custom_text_field.dart';
import 'package:noteapp_project/widgets/customappbar.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});
  static String id = "EditNote";
  @override
  Widget build(BuildContext context) {
    String text = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 60, horizontal: 12),
        child: Column(
          children: [
            const CustomAppBar(
              text: 'Edit Note',
              icon: Icons.check,
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextField(textfield: text, size: 1),
            const SizedBox(
              height: 35,
            ),
            const CustomTextField(textfield: 'Content', size: 5),
          ],
        ),
      ),
    );
  }
}
