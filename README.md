chickenStyle 🐔🐔 is a package that can help developers
to speed up the process of creating textstyles in general.
as we know the more complex the page we create
the more we interact with textstyle.
designing the textstyle in each widget is a very tiring job,
and you definitely won't be able to be consistent in your work.
chickenStyle comes like a class in CSS, where is the declaration of this class
we save it in a different file, and we can call that class anytime and anywhere
Apart from that, we don't need to declare widget one by one,
you just type one line of bash code and you will get
more than 20 textstyle widgets ready to use.
In that class you can define colors, font family, fontweight and others..



## Getting started

open your terminal editor and type

## Generate simple textStyle widget

```bash
dart run chicken
```

and you will find new file on your apps ./lib/chickenStyle/ChickenStyle.dart

```dart
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class ChickenStyle {
  final regular10 = TextStyle(
      fontSize: 10, 
      color: Colors.green
  );
  ....

  ....
  final bold50 = TextStyle(
      fontSize: 50, 
      color: Colors.green,
      fontWeight: FontWeight.bold,
  );
}

```
## Generate textStyle widget with color red

```bash
dart run chicken --color=Colors.red
```

```bash
dart run chicken --color='Color(0xffffff)'
```

and you will find new file on your apps ./lib/chickenStyle/ChickenStyleRed.dart

### Generate textStyle widget with class name
```bash
dart run chicken --color=Colors.green --class-name=MyCustomeStyle
```
and you will find new file on your apps ./lib/chickenStyle/MyCustomeStyle.dart

### Generate textStyle widget with font family

```bash
dart run chicken --font-family=Inter-Regular
```

### Generate textStyle widget with custome mininal and maximal fontsize 
```bash
dart run chicken --min=5 --max=100
```
then sistem will generate custome textStyle widget with fontsize start from 2 to 100

### Generate full custome textStyle
```bash
dart run chicken --full=Y
```
with this code sistem will generate full custome style textStyle including 
- regular, 
- regular-italic, 
- regular-undeline, 
- bold, 
- bold-italic 
- and bold-undeline 

for each font size. 

and if you do not type "--full" statement chickenStyle only generate regular and bold textStyle widget.

### Complete bash example
```bash
dart run chicken --color=Colors.green --class-name=IronManStyle --font-family='Times New Roman' --m
in=10 --max=12 --full=y
```

code above will create file ./lib/chickenStyle/IronManStyle.dart
```dart
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class IronManStyle {
  final regular10 = TextStyle(
      fontFamily: "Times New Roman",
      fontSize: 10, 
      color: Colors.green
  );

  final regular10Italic = TextStyle(
      fontStyle: FontStyle.italic,
      fontFamily: "Times New Roman",
      fontSize: 10, 
      color: Colors.green
  );

  final regular10Underline = TextStyle(
      decoration: TextDecoration.underline,
      fontFamily: "Times New Roman",
      fontSize: 10, 
      color: Colors.green
  );

  final bold10 = TextStyle(
      fontFamily: "Times New Roman",
      fontSize: 10, 
      fontWeight: FontWeight.bold,
      color: Colors.green
  );

  final bold10Italic = TextStyle(
      fontStyle: FontStyle.italic,
      fontFamily: "Times New Roman",
      fontSize: 10, 
      fontWeight: FontWeight.bold,
      color: Colors.green
  );

  final bold10Underline = TextStyle(
      decoration: TextDecoration.underline,
      fontFamily: "Times New Roman",
      fontSize: 10, 
      fontWeight: FontWeight.bold,
      color: Colors.green
  );

  final regular11 = TextStyle(
      fontFamily: "Times New Roman",
      fontSize: 11, 
      color: Colors.green
  );

  final regular11Italic = TextStyle(
      fontStyle: FontStyle.italic,
      fontFamily: "Times New Roman",
      fontSize: 11, 
      color: Colors.green
  );

  final regular11Underline = TextStyle(
      decoration: TextDecoration.underline,
      fontFamily: "Times New Roman",
      fontSize: 11, 
      color: Colors.green
  );

  final bold11 = TextStyle(
      fontFamily: "Times New Roman",
      fontSize: 11, 
      fontWeight: FontWeight.bold,
      color: Colors.green
  );

  final bold11Italic = TextStyle(
      fontStyle: FontStyle.italic,
      fontFamily: "Times New Roman",
      fontSize: 11, 
      fontWeight: FontWeight.bold,
      color: Colors.green
  );

  final bold11Underline = TextStyle(
      decoration: TextDecoration.underline,
      fontFamily: "Times New Roman",
      fontSize: 11, 
      fontWeight: FontWeight.bold,
      color: Colors.green
  );

  final regular12 = TextStyle(
      fontFamily: "Times New Roman",
      fontSize: 12, 
      color: Colors.green
  );

  final regular12Italic = TextStyle(
      fontStyle: FontStyle.italic,
      fontFamily: "Times New Roman",
      fontSize: 12, 
      color: Colors.green
  );

  final regular12Underline = TextStyle(
      decoration: TextDecoration.underline,
      fontFamily: "Times New Roman",
      fontSize: 12, 
      color: Colors.green
  );

  final bold12 = TextStyle(
      fontFamily: "Times New Roman",
      fontSize: 12, 
      fontWeight: FontWeight.bold,
      color: Colors.green
  );

  final bold12Italic = TextStyle(
      fontStyle: FontStyle.italic,
      fontFamily: "Times New Roman",
      fontSize: 12, 
      fontWeight: FontWeight.bold,
      color: Colors.green
  );

  final bold12Underline = TextStyle(
      decoration: TextDecoration.underline,
      fontFamily: "Times New Roman",
      fontSize: 12, 
      fontWeight: FontWeight.bold,
      color: Colors.green
  );

}


```
## Additional information

Feel free to report some issues.. 