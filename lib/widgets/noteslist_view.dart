import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp_project/cubits/notes_cubit/notes_cubit.dart';
import 'package:noteapp_project/models/note_model.dart';
import 'package:noteapp_project/widgets/noteview_body.dart';

class Noteslistview extends StatelessWidget {
  const Noteslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NoteState>(
      builder: (context, state) {
        var models = BlocProvider.of<NotesCubit>(context).list;
        if (state is NoteSuccess) {
          List<NoteModel> list = models ?? [];
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Notesviewbody(model: list[index]);
            },
          );
        } else {
          return Container();
        }
      },
    );
  }
}
