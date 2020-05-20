import 'package:flutter/material.dart';

void main() {
  //flutter自定义入口方法
  runApp(MyApp());
}
// 也可以写成:
// void main() => runApp(MyApp())

//使用MaterialApp和Scaffold 两个组件装饰App
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo')
        ),
        body: HomeContent()
      ),
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "你好 flutter",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
//          color: Colors.pink,
//        color: Color.fromRGBO(244, 233, 214, 0.5),
          color: Color(0xFFF48FB1),

        ),
      ),
    );;
  }

}