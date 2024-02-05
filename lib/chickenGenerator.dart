import 'dart:io';

import 'chickenStyleTemplate.dart';

void chickenGenerator(List<String>? argumentsValue) {
  /* 
  --color
  --font-family
  --min
  --max
  --prefix
   */
  String templateHeader = chickenStyleTemplateHeader;
  String templateContent = chickenStyleTemplateContent;
  String templateContentFF = chickenStyleTemplateContentWithFontFamily;
  String selectedTemplateContent = templateContent;
  String center = "";

  String templateFooter = chickenStyleTemplateFooter;
  String rawTemplate = "";
  rawTemplate = rawTemplate+templateHeader;

  String colorName = 'Black';
  String colorCode = 'Colors.black';

  String prefix = "";
  int min = 2;
  int max = 50;
  String fontFamily = "";
  if (argumentsValue != null) {
    // check color argument
    int checkColor =  argumentsValue.indexWhere((element) => element.contains("color"));
    if (checkColor != -1) {
      colorCode = argumentsValue[checkColor].replaceAll('--color=', '');
      
      colorName = colorCode.replaceAll("Colors.", '');
      colorName = colorName.replaceFirst(colorName[0], colorName[0].toUpperCase());
    }

    // check fontfamily
    int checkFontFamily = argumentsValue.indexWhere((element) => element.contains("font-family"));
    if(checkFontFamily != -1){
      selectedTemplateContent =  templateContentFF;
      fontFamily = argumentsValue[checkFontFamily].replaceAll('--font-family=', '');
    }

    // check min 
    int checkMin = argumentsValue.indexWhere((element) => element.contains("min"));
    if(checkMin != -1){
      print(min);
      min = int.parse( argumentsValue[checkMin].replaceAll('--min=', ''));
      
    }

    // check max
    int checkMax = argumentsValue.indexWhere((element) => element.contains("max"));
    if(checkMax != -1){
      print(max);
      max = int.parse( argumentsValue[checkMax].replaceAll('--max=', ''));
    }

    for(int i = min; i<= max; i++){
      String candidate = selectedTemplateContent.replaceAll('FONT_SIZE', i.toString());
      if(fontFamily != ""){
        candidate = candidate.replaceAll('FONT_FAMILY', fontFamily);
      }
      candidate = candidate.replaceAll('COLOR_VALUE', colorCode);
      center = center+candidate;
    }

    rawTemplate = rawTemplate+center;


    // check prefix
    int checkPrefix = argumentsValue.indexWhere((element) => element.contains("prefix"));
    if(checkPrefix != -1){
      prefix = argumentsValue[checkPrefix].replaceAll('--prefix=', '');
    }
  }

  rawTemplate = rawTemplate+templateFooter;
  if(colorName.contains(")")){
    colorName = "";
  }
  String result =
      rawTemplate.replaceAll('CLASS_NAME', "${prefix}ChickenStyle${colorName}");
  File file = File('lib/chickenStyle/${prefix}ChickenStyle${colorName}.dart');
  file.createSync(recursive: true);
  file.writeAsStringSync(result);
}
