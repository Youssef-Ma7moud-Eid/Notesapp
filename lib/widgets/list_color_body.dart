import 'package:flutter/material.dart';

import 'package:noteapp_project/constant.dart';

import 'package:noteapp_project/widgets/Color_pick_widget.dart';

class ListColorBody extends StatefulWidget {
  ListColorBody({super.key, this.indexx});
  var indexx;

  @override
  State<ListColorBody> createState() => _ListColorBodyState();
}

class _ListColorBodyState extends State<ListColorBody> {
  var curindex;
  @override
  void initState() {
    curindex = widget.indexx == -1 ? 0 : widget.indexx;
    ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              curindex = index;

              setState(() {});
            },
            child: ColorPickWidget(
              colors: kColors[index],
              active: curindex == index,
            ),
          );
        });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              curindex = index;

              setState(() {});
            },
            child: ColorPickWidget(
              colors: kColors[index],
              active: curindex == index,
            ),
          );
        });
  }
}
