import 'package:flutter/material.dart';

class EditNote extends StatefulWidget {
  @override
  _EditNoteState createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 37, 37, 37),
        elevation: 0,
        title: Text(
          "Notes",
          style: TextStyle(
            fontFamily: "GoogleSans",
            fontSize: 36,
          ),
        ),
      ),
    );
  }
}