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

----

[基本StatelessWidgt範例](example/statelesswidget/README.md)