part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoadingState extends NotesState {}

class NotesSuccessState extends NotesState {
  final List<NoteModel> notes;
  NotesSuccessState(this.notes);
}

class NotesFailureState extends NotesState {
  final String errorMessage;
  NotesFailureState(this.errorMessage);
}
