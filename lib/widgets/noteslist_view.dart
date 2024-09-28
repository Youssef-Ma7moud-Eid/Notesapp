import 'package:flutter/material.dart';
import 'package:noteapp_project/widgets/Noteview_body.dart';

class Noteslistview extends StatelessWidget {
  const Noteslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Notesviewbody();
      },
    );
  }
}
