import 'package:flutter/material.dart';

/**
 *
 * crossAxisCount: int  一行Widget数量
 * scrollDirection: Axis 滚动方法
 * mainAxisSpacing: double 垂直子Widget之间间距
 * corssAxisSpacing: double 水平子Widget之间间距
 * children: <Widget>[]
 * gridDelegate
 */
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('GridView'),),
        body: HomeContent(),
      ),
      theme: ThemeData(),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: <Widget>[
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
      ],
    );
  }

}