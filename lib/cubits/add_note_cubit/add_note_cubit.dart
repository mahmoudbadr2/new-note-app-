import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_states.dart';

import 'package:note_app/models/note_model.dart';

class AddNotesCubit extends Cubit<AddNotesStates> {
  AddNotesCubit() : super(AddNotesInitialState());

  Color? color = const Color(0xffE8B9AB);
  addNote(NoteModel note) async {
    note.color = color!.toARGB32();
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
