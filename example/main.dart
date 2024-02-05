
import 'package:chicken/chickenStyle/IronManStyle.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Avengers',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: LoadingPage(),
    );
  }
}

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  bool isDarkMode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Avangers Lists"),
      ),

      body: Container(
        child: Column(
          children: [
            Text("Iron Man", style: IronManStyle().bold10,),
            Text("Captain America", style: IronManStyle().regular12Underline,),
            Text("Spiderman", style: IronManStyle().bold11Underline,),
            Text("Hulk", style: IronManStyle().bold12Italic,),
            Text("Thor", style: IronManStyle().regular11Italic,),
            Text("Others", style: IronManStyle().bold10Italic,),
          ],
        )
      ),
    );
  }
}