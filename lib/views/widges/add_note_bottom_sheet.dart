import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubits/add_note_cubit.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:note_app/views/widges/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: BlocConsumer<AddNotesCubit, AddNotesStates>(
        listener: (BuildContext context, state) {
          if (state is AddNotesFailureState) {
            print('error ${state.errorMessage}');
          }
          if (state is AddNotesSuccessState) {
            Navigator.pop(context);
          }
        },
        builder: (BuildContext context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is AddNotesLoadingState ? true : false,
            child: const SingleChildScrollView(child: AddNoteForm()),
          );
        },
      ),
    );
  }
}
