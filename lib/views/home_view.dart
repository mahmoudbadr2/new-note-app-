import 'package:flutter/material.dart';
import 'package:note_app/views/widges/add_note_bottom_sheet.dart';
import 'package:note_app/views/widges/notes_view_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(
                    context,
                  ).viewInsets.bottom, // adjust for keyboard
                ),
                child: const AddNoteBottomSheet(),
              );
            },
          );
        },
        child: Icon(Icons.add, size: 28),
      ),
      body: const NotesViewBody(),
    );
  }
}
