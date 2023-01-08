import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Event Scheduler'),
          centerTitle: false,
          backgroundColor: Colors.deepPurple.shade700,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                color: Colors.deepPurple.shade400,
              ),
              Container(
                color: Colors.deepPurple.shade400,
                padding: EdgeInsets.fromLTRB(10, 16, 10, 16),
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  controller: _textEditingController,
                  decoration: InputDecoration(
                      labelText: 'Event',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      prefixIcon: Icon(
                        Icons.event,
                        color: Colors.white,
                      ),
                      fillColor: Colors.deepPurple.shade600,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  validator: ((value) {
                    if (value!.isEmpty) return 'Enter Event Description';
                  }),
                ),
              ),
              Container(
                color: Colors.deepPurple.shade400,
                padding: EdgeInsets.fromLTRB(15, 1, 15, 14),
                child: Builder(builder: (context) {
                  return TextButton(
                    onPressed: () {
                      String newEventText = _textEditingController.text;
                      Navigator.of(context).pop(newEventText);
                    },
                    child: const Text('ADD'),
                    style: TextButton.styleFrom(
                      textStyle:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      backgroundColor: Colors.white38,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.fromLTRB(150, 16, 150, 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  );
                }),
              ),
              Container(
                height: 300 - 42.667,
                color: Colors.deepPurple.shade400,
              )
            ],
          ),
        ));
  }
}
