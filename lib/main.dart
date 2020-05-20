import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo2"),
        ),
        body: MyHomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
    );
  }
}

//Flutter 图片组件
/**
 * 显示本地图片
 */
class MyHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
       child: Container(
         child: Image.asset(
           'images/timg.jpg',
           fit: BoxFit.cover,
         ),
         height: 300,
         width: 300,
       ),
    );
  }

}