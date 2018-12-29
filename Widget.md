# Widget

讓 APP 在不同的狀態下顯示出不一樣的外觀

## runApp()

執行 Widget 並將它顯示在畫面上

```dart

void main() {
  runApp();
}

```

## Text

建立一個樣式化的文字元件

```Dart

import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Text(
        'Hello',
        textDirection: TextDirection.ltr,
      ),
    )
  );
}

```

## Row & Column

## StatelessWidget

無狀態

## StatefulWidget

有狀態
