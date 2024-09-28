import 'package:flutter/material.dart';
import 'package:noteapp_project/widgets/customappbar.dart';
import 'package:noteapp_project/widgets/noteslist_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
            child: CustomAppBar(),
          ),
          Expanded(
            child: Noteslistview(),
          ),
        ]),
      ),
    );
  }
}
