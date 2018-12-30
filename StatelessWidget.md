# StatelessWidget

靜態 Widget

## Container

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
