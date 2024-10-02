import 'package:flutter/material.dart';
import 'package:noteapp_project/widgets/add_note_buttom_sheet.dart';
import 'package:noteapp_project/widgets/customappbar.dart';
import 'package:noteapp_project/widgets/noteslist_view.dart';

class AddNotesView extends StatelessWidget {
  const AddNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return const Addnotebuttomsheet();
              });
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.only(top: 5, right: 15, left: 15, bottom: 30),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20, top: 50),
            child: CustomAppBar(
              text: 'Note',
              icon: Icons.search,
            ),
          ),
          Expanded(
            child: Noteslistview(),
          ),
        ]),
      ),
    );
  }
}
