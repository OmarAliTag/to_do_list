import 'package:flutter/material.dart';
import 'package:to_do_list/models/note.dart';

class ArchivedNotesScreen extends StatefulWidget {
  final List<Note> filterNotes;

  ArchivedNotesScreen({required this.filterNotes});

  @override
  _ArchivedNotesScreenState createState() => _ArchivedNotesScreenState();
}

class _ArchivedNotesScreenState extends State<ArchivedNotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Archived Notes'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(widget.filterNotes[index].title),
          );
        },
        itemCount: widget.filterNotes.length,
      ),
    );
  }
}
