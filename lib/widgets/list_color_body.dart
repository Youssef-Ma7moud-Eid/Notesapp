import 'package:flutter/material.dart';
import 'package:noteapp_project/widgets/Color_pick_widget.dart';

class ListColorBody extends StatelessWidget {
  const ListColorBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox(
        height: 70,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const ColorPickWidget();
            }),
      ),
    );
  }
}
