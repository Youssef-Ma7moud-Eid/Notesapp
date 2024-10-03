import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp_project/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:intl/intl.dart';
import 'package:noteapp_project/models/note_model.dart';
import 'package:noteapp_project/widgets/custom_text_field.dart';
import 'package:noteapp_project/widgets/list_color_body.dart';
import 'package:noteapp_project/widgets/text_buttom.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title, subtitle;
  GlobalKey<FormState> formkey = GlobalKey(); // to access validate
  AutovalidateMode autovalidateMode =
      AutovalidateMode.disabled; // to appear errors in forms
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formkey,
      child: Container(
        margin: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            CustomTextField(
              textfield: 'Title',
              onsaveed: (value) {
                title = value;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              textfield: 'Content',
              size: 5,
              onsaveed: (value) {
                subtitle = value;
              },
            ),
            const SizedBox(
              height: 60,
            ),
            const SizedBox(
              height: 80,
              child: ListColorBody(),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButtom(
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  formkey.currentState!.save();
                  var currentdate = DateTime.now();
                  var formadate = DateFormat("dd-mm-yy").format(currentdate);
                  NoteModel model = NoteModel(
                      title: title!,
                      subtitle: subtitle!,
                      date: formadate,
                      color: Colors.blue.value);
                  BlocProvider.of<AddNoteCubit>(context).addnote(model);

                  setState(() {});
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
