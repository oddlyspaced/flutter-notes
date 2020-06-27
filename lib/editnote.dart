import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EditNote extends StatefulWidget {
  @override
  _EditNoteState createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 37, 37, 37), //or set color with: Color(0xFF0000FF)
    ));
    return Scaffold(
      key: Key("_scaffold"),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Container(
            width: 18,
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: EdgeInsets.only(
                right: 18,
              ),
              child: Card(
                color: Color.fromARGB(255, 59, 59, 59),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                    margin: EdgeInsets.fromLTRB(13.5, 9, 13.5, 9),
                    child: Icon(Icons.arrow_back_ios)),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              right: 18,
            ),
            child: Card(
              color: Color.fromARGB(255, 59, 59, 59),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                  margin: EdgeInsets.fromLTRB(13.5, 9, 13.5, 9),
                  child: Icon(Icons.edit)),
            ),
          ),
        ],
        /*leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: EdgeInsets.only(
              left: 18,
            ),
            child: Card(
              color: Color.fromARGB(255, 59, 59, 59),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.arrow_back_ios),
            ),
          ),
        ),*/
        backgroundColor: Color.fromARGB(255, 37, 37, 37),
        elevation: 0,
      ),
      body: EditNoteBody(),
    );
  }
}

class EditNoteBody extends StatefulWidget {
  @override
  _EditNoteBodyState createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 37, 37, 37),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: width,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(18, 9, 18, 9),
                  child: Text(
                    "Beautiful weather app UI concepts we wish existed",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "GoogleSans",
                        fontWeight: FontWeight.bold,
                        fontSize: 32),
                  ),
                ),
              ),
              Container(
                width: width,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(18, 9, 18, 9),
                  child: Text(
                    "May 21, 2020",
                    style: TextStyle(
                        color: Colors.white24,
                        fontFamily: "GoogleSans",
                        fontSize: 20),
                  ),
                ),
              ),
              Container(
                width: width,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(18, 9, 18, 18),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    style: TextStyle(
                        color: Colors.white70,
                        fontFamily: "GoogleSans",
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
