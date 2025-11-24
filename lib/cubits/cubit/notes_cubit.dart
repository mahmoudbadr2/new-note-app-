import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';

import 'package:note_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes(NoteModel note) async {
    try {
      var noteBox = Hive.box<NoteModel>(KNotesBox);
      List<NoteModel> notes = noteBox.values.toList();

      emit(NotesSuccessState(notes));
    } catch (e) {
      emit(NotesFailureState(e.toString()));
    }
  }
}
