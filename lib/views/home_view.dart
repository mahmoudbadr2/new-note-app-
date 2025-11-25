import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/cubit/notes_cubit.dart';
import 'package:note_app/views/widges/add_note_bottom_sheet.dart';
import 'package:note_app/views/widges/notes_view_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = NotesCubit();
        cubit.fetchAllNotes();
        return cubit;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(16),
              ),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              },
            );
          },
          child: Icon(Icons.add, size: 28),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
