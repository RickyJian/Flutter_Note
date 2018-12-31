import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget card = SizedBox(
      height: 250.0,
      width: 300.0,
      child: Card(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('ListTile 1',
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
              subtitle: Text('1'),
              leading: Icon(
                Icons.call,
                color: Colors.blue[500],
              ),
            ),
            ListTile(
              title: Text('ListTile 2',
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
              subtitle: Text('2'),
              leading: Icon(
                Icons.call,
                color: Colors.blue[500],
              ),
            ),
            ListTile(
              title: Text('ListTile 3',
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
              subtitle: Text('3'),
              leading: Icon(
                Icons.call,
                color: Colors.blue[500],
              ),
            ),
          ],
        ),
      ),
    );

    return MaterialApp(
      title: 'StatelessWidget ListView & ListTile Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('StatelessWidget ListView & ListTile Demo'),
        ),
        body: Center(
          child: card,
        ),
      ),
    );
  }
}
