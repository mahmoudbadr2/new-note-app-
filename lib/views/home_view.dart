import 'package:flutter/material.dart';
import 'package:note_app/views/widges/notes_view_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add, size: 28),
      ),
      body: const NotesViewBody(),
    );
  }
}
