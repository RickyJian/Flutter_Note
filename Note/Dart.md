# Dart

[線上編譯器](https://dartpad.dartlang.org/)

## Hello World

```dart

void main (){
    print('Hello World');
}

```

## 變數宣告

### 動態變數宣告

電腦自動判讀變數型態

```dart

var name = 'name';
var number = 1;

```

### 指定型態宣告

```Dart

String name = 'Ricky'

```

#### final & const

常數

final：常數，當值初始後則不可以改變

const：比 final 更嚴格的常數型態，必須在編譯時就知道值為何，若無法得知則會出現錯誤

```Dart

void main (){
  // 編譯成功
  final int noFinal = 1;
  // 編譯成功
  final int noFinal2 = finalFunc();
  // 編譯成功
  const int noConst = 2;
  // 編譯失敗
  const int noConst2 = constFunc();
}

int finalFunc(){
  return 2;
}


int constFunc(){
  return 4;
}


```