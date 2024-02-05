String chickenStyleTemplateHeader = '''
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class CLASS_NAME {
''';

String chickenStyleTemplateContent = '''
  final regularFONT_SIZE = TextStyle(
      fontSize: FONT_SIZE, 
      color: COLOR_VALUE
  );

  final boldFONT_SIZE = TextStyle(
      fontSize: FONT_SIZE, 
      fontWeight: FontWeight.bold,
      color: COLOR_VALUE
  );
''';

String chickenStyleTemplateContentWithFontFamily = '''
  final regularFONT_SIZE = TextStyle(
      fontFamily: "FONT_FAMILY",
      fontSize: FONT_SIZE, 
      color: COLOR_VALUE
  );
  final boldFONT_SIZE = TextStyle(
      fontFamily: "FONT_FAMILY",
      fontSize: FONT_SIZE, 
      fontWeight: FontWeight.bold,
      color: COLOR_VALUE
  );

''';

String chickenStyleTemplateFooter = '''
}
''';