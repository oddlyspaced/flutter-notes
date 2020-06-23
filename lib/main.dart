import 'package:flutter/material.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      home: NotesHome(),
    );
  }
}

class NotesHome extends StatefulWidget {
  @override
  _NotesHomeState createState() => _NotesHomeState();
}

class _NotesHomeState extends State<NotesHome> {
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
      body: Container(
        color: Color.fromARGB(255, 37, 37, 37),
        child: Row(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width / 2,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: EdgeInsets.only(
                  left: 18,
                  right: 9,
                  bottom: 9,
                  top: 9,
                ),
                color: Color.fromARGB(255, 255, 171, 145),
                elevation: 0,
                child: Padding(
                  padding: EdgeInsets.all(18),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "How to make your personal brand stand out online",
                        style: TextStyle(
                          fontFamily: "GoogleSans",
                          fontSize: 18,
                        ),
                      ),
                      Text("dd"),
                      Text("dd"),
                      Text("dd"),
                      Text("dd"),

                    ],
                  ),
                ),
              ),
            ),
            
            
            Container(
              width: MediaQuery.of(context).size.width / 2,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: EdgeInsets.only(
                  left: 9,
                  right: 18,
                  bottom: 9,
                  top: 9,
                ),
                color: Color.fromARGB(255, 255, 171, 145),
                elevation: 0,
                child: Padding(
                  padding: EdgeInsets.all(18),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          "How to make your personal brand stand out online",
                          style: TextStyle(
                            fontFamily: "GoogleSans",
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
