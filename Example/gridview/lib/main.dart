import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Container> _buildGridTileList(int count) {
      List<Container> containers = List<Container>.generate(
          count,
          (int index) => Container(
                  child: Text(
                '${index + 1}',
                textDirection: TextDirection.ltr,
              )));
      return containers;
    }

    Widget gridViewDemo = GridView.extent(
      maxCrossAxisExtent: 150.0,
      padding: const EdgeInsets.all(4.0),
      mainAxisSpacing: 100.0,
      crossAxisSpacing: 4.0,
      children: _buildGridTileList(20),
    );

    return MaterialApp(
      title: 'StatelessWidget GridView Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('StatelessWidget GridView Demo'),
        ),
        body: Center(
        child: gridViewDemo,
      ),
      ),
    );
  }
}
