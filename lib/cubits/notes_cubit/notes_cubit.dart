import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:noteapp_project/constant.dart';
import 'package:noteapp_project/models/note_model.dart';
part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NoteState> {
  NotesCubit() : super(NoteInitial());
  List<NoteModel>? list;
  fetchAllNotes() async {
    var notesBox = Hive.box<NoteModel>(knotesBox);
    list = notesBox.values.toList();
    emit(NoteSuccess(notes: list!));
  }
}
