import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_notes_cubit/add_notes_states.dart';
import 'package:note_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesStates> {
  NotesCubit(super.initialState);

  addNote(NoteModel note) async {
    emit(AddNotesLoadingState());

    try {
      var noteBox = Hive.box<NoteModel>(KNotesBox);
      emit(AddNotesSuccessState());
      await noteBox.add(note);
    } catch (e) {
      AddNotesFailureState(e.toString());
    }
  }
}
