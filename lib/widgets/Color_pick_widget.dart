import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:noteapp_project/cubits/add_note_cubit/add_note_cubit.dart';

class ColorPickWidget extends StatefulWidget {
  ColorPickWidget({super.key, required this.colors, required this.active});
  bool active;
  Color colors;
  @override
  State<ColorPickWidget> createState() => _ColorPickWidgetState();
}

class _ColorPickWidgetState extends State<ColorPickWidget> {
  double radius = 37;
  @override
  Widget build(BuildContext context) {
    if (widget.active == true) {
      if (radius == 37) {
        BlocProvider.of<AddNoteCubit>(context).addcolor(widget.colors);
        radius = 42;
      } else {
        radius = 37;
        BlocProvider.of<AddNoteCubit>(context).rebeatcolor();
      }
      setState(() {});
    } else {
      radius = 37;
    }
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: CircleAvatar(
        radius: radius,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 37,
          backgroundColor: widget.colors,
        ),
      ),
    );
  }
}
  // Container(
    //   margin: const EdgeInsets.symmetric(
    //     horizontal: 2,
    //   ),
    //   width: 70,
    //   height: 110,
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(60),
    //     color: Colors.blue,
    //   ),
    // );