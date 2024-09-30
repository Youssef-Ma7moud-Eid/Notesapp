import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp_project/constant.dart';
import 'package:noteapp_project/views/edit_note_view.dart';
import 'package:noteapp_project/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(knotesBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        EditNote.id: (context) => const EditNote(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      home: const HomePage(),
    );
  }
}
