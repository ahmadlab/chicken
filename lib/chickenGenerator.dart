import 'dart:io';

import 'chickenStyleTemplate.dart';

void chickenGenerator(List<String>? colorValue) {
  //colorValue!.map((e) => print(e)).toList();
  String styleTemplate = chickenStyleTemplate;
  String color = 'Black';
  if(colorValue != null){
    // check warna
    int checkWarna = colorValue.indexWhere((element) => element.contains("color"));
    print(colorValue[checkWarna]);
    String warna = colorValue[checkWarna].replaceAll('--color=', '');
    print(warna);
    styleTemplate = styleTemplate.replaceAll('COLOR_VALUE', warna);
    color = warna.replaceAll("Colors.", '');
    color = color.replaceFirst(color[0], color[0].toUpperCase());
  }
  //final String simpleTextStyle = chickenStyle.replaceAll('COLOR_VALUE', colorValue!);
  styleTemplate = styleTemplate.replaceAll('CLASS_NAME', "ChickenStyle${color}");
  File file = File('lib/chickenStyle/chickenStyle${color}.dart');
  file.createSync(recursive: true);
  file.writeAsStringSync(styleTemplate);
}