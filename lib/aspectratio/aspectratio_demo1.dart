import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/***
 * aspectratio: 宽高占比按照图片的比例进行手机适配
 */
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text( '')),
        body: HomeContent(),
      ),
    );
  }
  
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: AspectRatio(
        //父容器的宽是200  那么子容器的宽宽高比是2/1, 子容器的宽是200 高是100
          aspectRatio: 2.0 / 1.0,
          child: Container(
            color: Colors.red,
          ),
      ),
    );
  }
  
}