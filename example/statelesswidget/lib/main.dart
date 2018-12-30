import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Text Widget Demo
    Widget textDemo = Container(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: <Widget>[
          Text(
            'Text Demo,Direction left to right.Demo Demo Demo Demo Demo Demo Demo',
            textDirection: TextDirection.ltr,
          ),
          Text(
            'Text Demo,Direction right to left.Demo Demo Demo Demo Demo Demo Demo',
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );

    // Container Widget Demo
    Widget containerDemo = Container(
      decoration: BoxDecoration(
        color: Colors.black26,
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10.0),
            color: const Color(0xFF2196F3),
            child: Container(
              margin: const EdgeInsets.all(5.0),
              color: const Color(0xFFFFECB3),
              child: Text(
                'Padding is blue. Margin is yellow.BoxDecoration is grey.',
                textDirection: TextDirection.ltr,
              ),
            ),
          ),
        ],
      ),
    );

    Widget boxDecorationDemo = Container(
      decoration: BoxDecoration(
        color: Colors.black26,
      ),
    );

    Widget rowDemo = Container(
      child: Row(
        children: <Widget>[
          Container(
            child: Text(
              'First Row',
              textDirection: TextDirection.ltr,
            ),
          ),
          Container(
            child: Text(
              'Second Row',
              textDirection: TextDirection.ltr,
            ),
          ),
        ],
      ),
    );

    Widget columnDemo = Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Text(
              'First Column',
              textDirection: TextDirection.ltr,
            ),
          ),
          Container(
            child: Text(
              'Second Column',
              textDirection: TextDirection.ltr,
            ),
          ),
        ],
      ),
    );

    Widget expandedDemo = Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'First Row',
                textDirection: TextDirection.ltr,
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Text(
                'Second Row',
                textDirection: TextDirection.ltr,
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Text(
                'Third Row',
                textDirection: TextDirection.ltr,
              ),
            ),
          ),
        ],
      ),
    );


    return MaterialApp(
      title: 'StatelessWidget Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('StatelessWidget Demo'),
        ),
        body: ListView(
          children: <Widget>[
            textDemo,
            containerDemo,
            boxDecorationDemo,
            rowDemo,
            columnDemo,
            expandedDemo,
          ],
        ),
      ),
    );
  }
}
