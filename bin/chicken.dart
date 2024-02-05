import 'package:chicken/chickenGenerator.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print("generate styles with color black(default)");
    chickenGenerator([]);
  } else {
    chickenGenerator(arguments);
  }
}
