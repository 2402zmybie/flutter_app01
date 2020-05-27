import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/**
 * Stack里面的alignment 是指定Stack里面所有的children的显示位置(children是层叠的)
 */
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text( 'Stack')),
        body: HomeContent(),
      ),
    );
  }
  
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
     child: Stack(
       alignment: Alignment.bottomLeft,
       children: <Widget>[
         Container(
           height: 400,
           width: 300,
           color: Colors.red,
         ),
         Text(
             '我是一个文本1',
           style: TextStyle(
             fontSize: 40,
             color: Colors.white
           ),
         ),
       ],
     ),
    );
  }
  
}