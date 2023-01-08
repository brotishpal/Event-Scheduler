import 'package:flutter/material.dart';
import 'package:my_project/new.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  final List<Widget> _list = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple.shade400,
        appBar: AppBar(
          title: Text('Event Scheduler'),
          centerTitle: false,
          backgroundColor: Colors.deepPurple.shade700,
        ),
        body: ListView.builder(
            padding: EdgeInsets.all(16.0),
            itemCount: _list.length,
            itemBuilder: (((context, index) => _list[index]))),
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            onPressed: () async {
              String newText;
              newText = await Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Home()));
              setState(() {
                _list.add(Container(
                    width: 300,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text('$newText',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          backgroundColor: Colors.white,
                        ))));
              });
            },
            child: Icon(Icons.add),
          );
        }),
      ),
    );
  }
}
