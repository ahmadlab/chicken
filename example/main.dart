
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
      debugShowCheckedModeBanner: false,
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {

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