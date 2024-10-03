import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp_project/constant.dart';
import 'package:noteapp_project/cubits/add_note_cubit/add_note_cubit.dart';

class TextButtom extends StatefulWidget {
  const TextButtom({super.key, this.onPressed});
  final void Function()? onPressed;

  @override
  State<TextButtom> createState() => _TextButtomState();
}

class _TextButtomState extends State<TextButtom> {
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (State is AddNoteLoading) {
          isloading = true;
        } else {
          isloading = false;
        }
      },
      builder: (context, state) {
        return BlocBuilder<AddNoteCubit, AddNoteState>(
          builder: (context, state) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: kprimarycolor,
              ),
              child: TextButton(
                onPressed: widget.onPressed,
                child: isloading == false
                    ? const Text(
                        'Add',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    : const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          color: Colors.black,
                        ),
                      ),
              ),
            );
          },
        );
      },
    );
  }
}
