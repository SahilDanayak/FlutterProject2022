import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewEventScreen();
}

// class Addbutton extends StatefulWidget {
//   @override
//   Widget build(BuildContext context) Center(
//     child : ListView(
//       padding: EdgeInsets.all(32),
//       children: [
//         const SizedBox(height : 24),
//         buttonwid
//       ],
//     )
//   )
// }

class _NewEventScreen extends State<NewEventScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(152, 141, 221, 1),
      appBar: AppBar(
        title: const Text("New Event"),
        backgroundColor: Color.fromRGBO(75, 57, 186, 1),
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
              0, 204, 0, 0), //EdgeInsets.top(vertical: 204.0),
          child: Center(
            child: SizedBox(
              width: 320,
              height: 75,
              child: TextField(
                style: TextStyle(color: Colors.white, fontSize: 18),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  //contentPadding: EdgeInsets.symmetric(vertical: 5),
                  filled: true,
                  fillColor: Color.fromRGBO(75, 57, 186, 1),
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(Icons.calendar_month, color: Colors.white),
                  hintText: 'Event',
                  hintStyle: TextStyle(color: Colors.white),
                ),
                controller: _textEditingController,
                textInputAction: TextInputAction.newline,
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
            ),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              String newEventText = _textEditingController.text;
              Navigator.of(context).pop(newEventText);
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xffa199d3),
              padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              //textStyle:TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
            ),
            child: Text("ADD")),
      ]),
    );
  }
}
