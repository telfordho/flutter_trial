import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
    State<StatefulWidget> createState(){
      return _MyAppState();
    }
}

class _MyAppState extends State<MyApp> {
  List<String> _people = ["Tony Parker"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Rocky Jai')),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              onPressed: () {
                setState(() {
                _people.add("Tony Stark");
                });
              },
              child: Text('Add People')
            ),
          ),
          Column(
            children: _people
            .map((element) => Card(
            child: Column(
              children: <Widget>[
                Image.asset('assets/rocky.jpg'),
                Text(element)
              ],
            ),
          ))
          .toList(),
          )

        ],
      ),
    ));
  }
}
