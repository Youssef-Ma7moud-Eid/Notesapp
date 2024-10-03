import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp_project/constant.dart';
import 'package:noteapp_project/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:noteapp_project/cubits/notes_cubit/notes_cubit.dart';

import 'package:noteapp_project/models/note_model.dart';
import 'package:noteapp_project/simple_bloc_observer.dart';
import 'package:noteapp_project/views/edit_note_view.dart';
import 'package:noteapp_project/views/add_notes_view.dart';

void main() async {
  await Hive.initFlutter(); // initialize hive
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter()); // to start store type of adapter
  await Hive.openBox<NoteModel>(knotesBox); // open box to store data

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          return AddNoteCubit();
        }),
        BlocProvider(create: (context) {
          return NotesCubit();
        }),
      ],
      child: MaterialApp(
        routes: {
          EditNote.id: (context) => const EditNote(),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        home: const AddNotesView(),
      ),
    );
  }
}
