import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp_project/constant.dart';
import 'package:noteapp_project/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:noteapp_project/cubits/notes_cubit/notes_cubit.dart';
import 'package:noteapp_project/models/note_model.dart';
import 'package:noteapp_project/widgets/custom_text_field.dart';
import 'package:noteapp_project/widgets/customappbar.dart';
import 'package:noteapp_project/widgets/list_color_body.dart';
import 'package:noteapp_project/widgets/snak_bar_widget.dart';

class EditNote extends StatefulWidget {
  const EditNote({super.key});
  static String id = "EditNote";

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  @override
  Widget build(BuildContext context) {
    NoteModel model = ModalRoute.of(context)!.settings.arguments as NoteModel;
    int index = kColors.indexOf(Color(model.color));
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 60, horizontal: 12),
          child: Column(
            children: [
              CustomAppBar(
                onPressed: () {
                  model.save();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  if (BlocProvider.of<AddNoteCubit>(context).color !=
                      Colors.green) {
                    model.color =
                        BlocProvider.of<AddNoteCubit>(context).color.value;
                  }

                  BlocProvider.of<AddNoteCubit>(context).rebeatcolor();
                  Navigator.of(context).pop();
                  scaffoldmessenger(
                    color: Colors.white,
                    text: 'Note Updated successfull',
                    context: context,
                    background: Colors.blue,
                  );
                },
                text: 'Edit Note',
                icon: Icons.check,
              ),
              const SizedBox(
                height: 50,
              ),
              CustomTextField(
                  onchanged: (data) {
                    model.title = data;
                  },
                  textfield: model.title,
                  size: 1),
              const SizedBox(
                height: 35,
              ),
              CustomTextField(
                  onchanged: (data) {
                    model.subtitle = data;
                  },
                  textfield: model.subtitle,
                  size: 5),
              const SizedBox(
                height: 25,
              ),
              SizedBox(height: 50 * 2, child: ListColorBody(indexx: index)),
            ],
          ),
        ),
      ),
    );
  }
}
