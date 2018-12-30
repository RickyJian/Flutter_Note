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

> EdgeInsets：微調

### BoBoxDecoration

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

建立一個矩形容器，可將元件放置其中

### BoxDecoration

## StatelessWidget

無狀態

## StatefulWidget

有狀態
