import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> listView = <Widget>[
      ListTile(
        title: Text('ListTile 1',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
        subtitle: Text('1'),
        leading: Icon(
          Icons.call,
          color: Colors.blue[500],
        ),
      ),
      ListTile(
        title: Text('ListTile 2',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
        subtitle: Text('2'),
        leading: Icon(
          Icons.call,
          color: Colors.blue[500],
        ),
      ),
      ListTile(
        title: Text('ListTile 3',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
        subtitle: Text('3'),
        leading: Icon(
          Icons.call,
          color: Colors.blue[500],
        ),
      ),
      ListTile(
        title: Text('ListTile 4',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
        subtitle: Text('4'),
        leading: Icon(
          Icons.call,
          color: Colors.blue[500],
        ),
      ),
      ListTile(
        title: Text('ListTile 5',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
        subtitle: Text('5'),
        leading: Icon(
          Icons.call,
          color: Colors.blue[500],
        ),
      ),
      ListTile(
        title: Text('ListTile 6',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
        subtitle: Text('6'),
        leading: Icon(
          Icons.call,
          color: Colors.blue[500],
        ),
      ),
      ListTile(
        title: Text('ListTile 7',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
        subtitle: Text('7'),
        leading: Icon(
          Icons.call,
          color: Colors.blue[500],
        ),
      ),
      ListTile(
        title: Text('ListTile 8',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
        subtitle: Text('8'),
        leading: Icon(
          Icons.call,
          color: Colors.blue[500],
        ),
      ),
      ListTile(
        title: Text('ListTile 9',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
        subtitle: Text('9'),
        leading: Icon(
          Icons.call,
          color: Colors.blue[500],
        ),
      ),
      ListTile(
        title: Text('ListTile 10',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
        subtitle: Text('10'),
        leading: Icon(
          Icons.call,
          color: Colors.blue[500],
        ),
      ),
    ];

    return MaterialApp(
      title: 'StatelessWidget ListView & ListTile Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('StatelessWidget ListView & ListTile Demo'),
        ),
        body: Center(
          child: ListView(children: listView),
        ),
      ),
    );
  }
}
