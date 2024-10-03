part of 'notes_cubit.dart';

@immutable
abstract class NoteState {}

final class NoteInitial extends NoteState {}

final class NoteLoading extends NoteState {}

final class DeleteNotesuccess extends NoteState {
  final List<NoteModel> notes;
  DeleteNotesuccess({required this.notes});
}

final class NoteSuccess extends NoteState {
  final List<NoteModel> notes;

  NoteSuccess({required this.notes});
}
