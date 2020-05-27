import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/***
 * aspectratio: 没有外部容器, 那么宽是占满屏幕的, 可以让图片占满整个屏幕
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
    return AspectRatio(
      aspectRatio: 2 /1,
      child: Container(
        child: Image.network("https://www.itying.com/images/flutter/1.png",fit: BoxFit.cover,),
      ),
    );
  }
  
}