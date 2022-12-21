import 'package:click_counter/event_adder.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  final List<Widget> _list = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(152, 141, 221, 1),
        appBar: AppBar(
          title: const Text("Event Scheduler"),
          backgroundColor: Color.fromRGBO(75, 57, 186, 1),
        ),
        body: ListView.builder(
            itemCount: _list.length,
            itemBuilder: ((content, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  child: ListTile(
                    title: Center(child: _list[index]),
                  ),
                ),
              );
            })),
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            backgroundColor: Color.fromRGBO(75, 57, 186, 1),
            onPressed: () async {
              String newText = await Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NewEventScreen()));
              setState(() {
                _list.add(Text(newText));
              });
            },
            child: Icon(Icons.add),
          );
        }),
      ),
    );
  }
}
