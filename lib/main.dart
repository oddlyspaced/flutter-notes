import 'package:flutter/material.dart';
import 'package:notes/editnote.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 37, 37, 37), //or set color with: Color(0xFF0000FF)
    ));
    return MaterialApp(
      title: 'Notes',
      home: NotesHome(),
    );
  }
}

class NotesList extends StatefulWidget {
  @override
  _NotesListState createState() => _NotesListState();
}

/*
 body: SingleChildScrollView(
        child: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            children: List.generate(100, (index) => index).map((e) {
              bool check = (e + 1) % 3 == 0;
              return Container(
                decoration: BoxDecoration(
                    color: check ? Colors.red : Colors.yellow,
                    border: Border.all()),
                height: height * 0.15,
                width: check ? width : width * 0.5,
                child: Column(
                  children: [Text(e.toString()), Text((e * e * e).toString())],
                ),
              );
            }).toList(),
          ),
        ),
      ),
      */

class _NotesListState extends State<NotesList> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<Color> colors = [
      Color.fromARGB(255, 255, 172, 145),
      Color.fromARGB(255, 255, 204, 128),
      Color.fromARGB(255, 230, 238, 155),
      Color.fromARGB(255, 128, 122, 234),
      Color.fromARGB(255, 207, 147, 217),
      Color.fromARGB(255, 244, 143, 177),
      Color.fromARGB(255, 128, 203, 196)
    ];
    int color = 0;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 37, 37, 37),
      body: SingleChildScrollView(
        child: Center(
          child: Wrap(
              alignment: WrapAlignment.start,
              children: List.generate(9, (index) => index).map((i) {
                bool left = i % 2 == 0; // left = true, right = false
                if (color == colors.length) color = 0;

                return Container(
                  width: width * 0.5,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: (left) ? 9 : 4.5,
                      right: (left) ? 4.5 : 9,
                      bottom: 4.5,
                      top: 4.5,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EditNote()),
                        );
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        color: colors[color++],
                        elevation: 0,
                        child: Padding(
                          padding: EdgeInsets.all(18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(bottom: 8),
                                child: Text(
                                  "How to make your personal brand stand out online",
                                  style: TextStyle(
                                    fontFamily: "GoogleSans",
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Text(
                                "May 21,2020",
                                style: TextStyle(
                                  fontFamily: "GoogleSans",
                                  color: Color.fromARGB(100, 0, 0, 0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }).toList()),
        ),
      ),
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
      body: NotesList(),
    );
  }
}
