# Dart

* 物件導向程式語言
* 使用在 前端 後端 Mobile 開發上
* 若有 JAVA 開發經驗容易上手

[線上編譯器](https://dartpad.dartlang.org/)

## 命名規則

[原文網址](https://www.dartlang.org/guides/language/effective-dart/style)

### 識別字

大駝峰(UpperCamelCase)

### 套件

全小寫配底線(lowercase_with_underscores)

### 變數 & 方法 

駝峰(lowerCamelCase )

## Hello World

```dart

void main (){
    print('Hello World');
}

```

## 變數宣告(Variables & Declation)

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

## 流程控制(Control Flow Statement)

### 判斷式

```Dart

void main (){
  int no = 100 ;
  if (no > 101){
    print('no > 101');
  }else if (no == 100){
    print('no = 100');
  }else{
    print('no < 100');
  }

  String name = 'Ricky';
  
  switch(name){
    case 'Jack':
      print(name);
      break;
    case 'Ricky':
      print(name);
      break;
    case 'John':
      print(name);
      break;
    default:
      print('No Name');
  }
}

```

### 迴圈(Loop)

```Dart

void main (){
  for(int i = 0 ; i < 10 ; i++){
    print(i);
  }
  
  var noArr = [1,2,3,4,5,6,7];
  for (var no in noArr){
    print(no);
  }
  
  int no = 0;
  
  while (no < 5){
    print(no);
    no ++;
  }
  
  no = 0;
  
  do{
    print(no);
    no ++;
  }while(no < 5);
}

```

## 錯誤處裡(Exception)

try catch finally:用來捕捉無法預期的錯誤。將有可能發生的錯誤放在 try 中幫有錯誤發生會進 catch，而 finally 則是不管有無錯誤發生都會執行的地方。

throw:拋出錯誤。

```Dart

void main (){
  try {
    formatFunc();
  } on FormatException catch(fe){
    // 指定要處理的錯誤
    print (fe);
    exceptionFunc();
  }catch(e){
    // 當所有錯誤發生都會進這個方法
    print(e);
  }finally{
    print('Done!');
  }

}

void formatFunc(){
  throw FormatException('格式錯誤。');
}


void exceptionFunc(){
  throw Exception('所有錯誤。');
}

```

## 函式(Function)

```Dart

// 無回傳值

void noneValueReturn(){
  print('noneValueReturn');
}

// 有回傳值
int noneValueReturn(){
  return 1;
}

// 帶參數

int paraFunc(int para){
  print(para);
}

```

## 類別(Class)

```Dart

void main() {
// 新建物件，在 Dart2 後 new 為選用字
  var person = Person('Ricky', 'Man');
// 取用屬性
  print(person.name);
// 設定屬性
  person.name = 'John';
  print(person.name);
// 使用方法
  person.printPerson();
}

class Person {
//   類別屬性
  String name;
  String gender;
  // 建構式，在 Dart 中只能有一個建構式
  Person(String name, String gender) {
    this.name = name;
    this.gender = gender;
  }
// 方法
  void printPerson() {
    print('name:' + this.name + " gender:" + this.gender);
  }
}


```