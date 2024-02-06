import 'dart:io';

import 'chickenStyleTemplate.dart';

void chickenGenerator(List<String>? argumentsValue) {
  /* 
  --color
  --font-family
  --full-template
  --min
  --max
  --class-name
   */
  String templateHeader = chickenStyleTemplateHeader;
  String templateContent = chickenStyleTemplateContent;
  String templateContentFF = chickenStyleTemplateContentWithFontFamily;

  String templateContentFull = chickenStyleTemplateContentFull;
  String templateContentFFFull = chickenStyleTemplateContentWithFontFamilyFull;
  String selectedTemplateContent = templateContent;
  String center = "";

  String templateFooter = chickenStyleTemplateFooter;
  String rawTemplate = "";
  rawTemplate = rawTemplate + templateHeader;

  String colorName = 'Black';
  String colorCode = 'Colors.black';

  String className = "";
  int min = 2;
  int max = 50;
  String fontFamily = "";
  if (argumentsValue != null) {
    // check color argument
    int checkColor =
        argumentsValue.indexWhere((element) => element.contains("color"));
    if (checkColor != -1) {
      colorCode = argumentsValue[checkColor].replaceAll('--color=', '');

      colorName = colorCode.replaceAll("Colors.", '');
      colorName =
          colorName.replaceFirst(colorName[0], colorName[0].toUpperCase());
    }
    int checkFullTemplate =
        argumentsValue.indexWhere((element) => element.contains("full"));
    // check fontfamily
    int checkFontFamily =
        argumentsValue.indexWhere((element) => element.contains("font-family"));
    if (checkFontFamily != -1) {
      if (checkFullTemplate == -1) {
        selectedTemplateContent = templateContentFF;
      } else {
        selectedTemplateContent = templateContentFFFull;
      }
      fontFamily =
          argumentsValue[checkFontFamily].replaceAll('--font-family=', '');
    } else {
      if (checkFullTemplate == -1) {
        selectedTemplateContent = templateContent;
      } else {
        selectedTemplateContent = templateContentFull;
      }
    }

    // check min
    int checkMin =
        argumentsValue.indexWhere((element) => element.contains("min"));
    if (checkMin != -1) {
      min = int.parse(argumentsValue[checkMin].replaceAll('--min=', ''));
    }

    // check max
    int checkMax =
        argumentsValue.indexWhere((element) => element.contains("max"));
    if (checkMax != -1) {
      max = int.parse(argumentsValue[checkMax].replaceAll('--max=', ''));
    }

    for (int i = min; i <= max; i++) {
      String candidate =
          selectedTemplateContent.replaceAll('FONT_SIZE', i.toString());
      if (fontFamily != "") {
        candidate = candidate.replaceAll('FONT_FAMILY', fontFamily);
      }
      candidate = candidate.replaceAll('COLOR_VALUE', colorCode);
      center = center + candidate;
    }

    rawTemplate = rawTemplate + center;

    // check prefix
    int checkClassName =
        argumentsValue.indexWhere((element) => element.contains("class-name"));
    if (checkClassName != -1) {
      className =
          argumentsValue[checkClassName].replaceAll('--class-name=', '');
    }
  }
  rawTemplate = rawTemplate + templateFooter;
  if (className == "") {
    if (colorName.contains(")") || colorName.contains('/')) {
      colorName = "";
    }
    String result =
        rawTemplate.replaceAll('CLASS_NAME', "ChickenStyle$colorName");
    File file = File('lib/chickenStyle/ChickenStyle$colorName.dart');
    file.createSync(recursive: true);
    file.writeAsStringSync(result);
  } else {
    String result = rawTemplate.replaceAll('CLASS_NAME', className);
    File file = File('lib/chickenStyle/$className.dart');
    file.createSync(recursive: true);
    file.writeAsStringSync(result);
  }
}
