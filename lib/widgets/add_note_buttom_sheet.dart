import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp_project/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:noteapp_project/cubits/notes_cubit/notes_cubit.dart';
import 'package:noteapp_project/widgets/form_buttom_sheet_body.dart';
import 'package:noteapp_project/widgets/snak_bar_widget.dart';

class Addnotebuttomsheet extends StatefulWidget {
  const Addnotebuttomsheet({super.key});

  @override
  State<Addnotebuttomsheet> createState() => _AddnotebuttomsheetState();
}

class _AddnotebuttomsheetState extends State<Addnotebuttomsheet> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteFailure) {
          scaffoldmessenger(
              color: Colors.red, text: state.errorMessage, context: context);
        } else if (state is AddNoteSuccess) {
          BlocProvider.of<NotesCubit>(context).fetchAllNotes();
          Navigator.of(context).pop();
          scaffoldmessenger(
              color: Colors.white,
              text: 'Note added successfull',
              context: context);
        }
      },
      builder: (context, state) {
        return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: const AddNoteForm());
      },
    );
  }
}
