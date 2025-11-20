import 'package:flutter/material.dart';
import 'package:note_app/views/home_view.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      routes: {HomePage.id: (context) => HomePage()},
      initialRoute: HomePage.id,
    );
  }
}
