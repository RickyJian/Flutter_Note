import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget stackDemo = Stack(
      alignment: const Alignment(0.2, 0.2),
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.blue[700],
          radius: 100,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black12,
          ),
          child: Text(
            'Text is on the circle',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        )
      ],
    );

    return MaterialApp(
      title: 'StatelessWidget Stack Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('StatelessWidget Stack Demo'),
        ),
        body: Center(
          child: stackDemo,
        ),
      ),
    );
  }
}
