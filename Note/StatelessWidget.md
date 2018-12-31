# StatelessWidget

靜態 Widget

## Container

建立一個矩形範圍可作為各種樣式的基底，類似 HTML 的 div 標籤。

```Dart

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

```

> EdgeInsets：微調 <br>
> BoxDecoration：可用來當做陰影外框或背景

## Text

建立一個樣式化的文字元件

```Dart

  Widget textDemo = Container(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: <Widget>[
          Text(
            'Text Demo,Direction left to right',
            textDirection: TextDirection.ltr,
          ),
          Text(
            'Text Demo,Direction right to left',
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
}

```

## Row & Column

列(Row)行(Column)元件佈局

```Dart

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

```

### Expanded

平均將元件分配到視窗上

```Dart

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

```

## Stack

可讓 Widget 相互堆疊

```Dart

    Widget stackDemo = Stack(
      alignment: const Alignment(0.6, 0.6),
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

```

> alignment：堆疊物件放置位置，會與後 Widget 會放在 前 Widget 的相對位置上(中心點：(0,0))

## GridView

格子排列元件，當格子數量超過螢幕大小可捲動

```Dart

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
      mainAxisSpacing: 4.0,
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


```

> maxCrossAxisExtent:內部元件最大水平寬度 <br>
> mainAxisSpacing:元件與元件間的垂直空格 <br>
> crossAxisSpacing:元件與元件間的水平空格

## ListView & ListTile

ListView:清單排列方式，當清單數量超過螢幕大小可捲動

ListTile:特殊 Row 元件，title：標題、subTitle：子標題、leading：標題及子標題前UI

```Dart

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


```

## SizedBox & Card

為了配合 Card 的使用所以我們必須使用 SizedBox 來限定 Card 的大小。
Card 屬性 child 裡可放置各種 Widget

```Dart

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

```

----

## 範例

[基本StatelessWidgt](Example/statelesswidget/README.md)

[GridView](Example/gridview/README.md)

[ListView & ListTile](Example/list/README.md)

[Stack](Example/stack/README.md)

[SizedBox & Card](Example/sizedbox/README.md)