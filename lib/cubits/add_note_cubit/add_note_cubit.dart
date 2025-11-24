import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_states.dart';

import 'package:note_app/models/note_model.dart';

class AddNotesCubit extends Cubit<AddNotesStates> {
  AddNotesCubit() : super(AddNotesInitialState());

  addNote(NoteModel note) async {
    emit(AddNotesLoadingState());

    try {
      var noteBox = Hive.box<NoteModel>(KNotesBox);
      await noteBox.add(note);
      emit(AddNotesSuccessState());
    } catch (e) {
      emit(AddNotesFailureState(e.toString()));
    }
  }
}
