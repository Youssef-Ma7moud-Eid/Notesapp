import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp_project/cubits/notes_cubit/notes_cubit.dart';
import 'package:noteapp_project/models/note_model.dart';
import 'package:noteapp_project/views/edit_note_view.dart';
import 'package:noteapp_project/widgets/snak_bar_widget.dart';

class Notesviewbody extends StatelessWidget {
  const Notesviewbody({super.key, required this.model});
  final NoteModel model;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, EditNote.id, arguments: model);
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: 15),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Color(model.color),
            ),
            child: Card(
              color: Color(model.color),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.title,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      model.subtitle,
                      style: const TextStyle(
                        color: Color.fromARGB(196, 59, 52, 52),
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Youssef mahmoud',
                      style: TextStyle(
                        color: Color.fromARGB(196, 59, 52, 52),
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 5,
          top: 30,
          child: IconButton(
            onPressed: () {
              model.delete();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              scaffoldmessenger(
                  context: context,
                  text: 'Note deleted',
                  color: Colors.white,
                  background: Colors.red);
            },
            icon: const Icon(
              Icons.delete,
              color: Colors.black,
              size: 28,
            ),
          ),
        ),
        Positioned(
          right: 25,
          top: 155,
          child: Text(
            model.date,
            style: const TextStyle(
              color: Color.fromARGB(196, 59, 52, 52),
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
