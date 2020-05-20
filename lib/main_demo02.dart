import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "你好 flutter,抽离自定义组件",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
//          color: Colors.pink,
//        color: Color.fromRGBO(244, 233, 214, 0.5),
        color: Color(0xFFF48FB1),
          
        ),
      ),
    );
  }

}