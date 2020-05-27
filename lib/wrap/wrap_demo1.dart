import 'package:flutter/material.dart';

void main() => runApp(MyApp());
/**
 * wrap组件
 * direction:主轴的方向
 * alignment:主轴的对其方式
 * runAlignment: y轴的对其方式
 * spacing: 主轴方向上的间距
 * runSpacing: 纵轴的间距
 * textDirection:文本方向
 * verticalDirection

 */
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text( 'RaisedButton')),
        body: HomeContent(),
      ),
    );
  }
  
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 300,
      color: Colors.pink,
      padding: EdgeInsets.all(10),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        runAlignment: WrapAlignment.end,
        children: <Widget>[
          MyButton("第一季第一季第一季第一季第一季"),
          MyButton("第一季"),
          MyButton("第一季"),
          MyButton("第一季"),
          MyButton("第一季"),
          MyButton("第一季"),
          MyButton("第一季"),
          MyButton("第一季"),
          MyButton("第一季"),
          MyButton("第一季"),
          MyButton("第一季"),
          MyButton("第一季"),
          MyButton("第一季"),
        ],
      ),
    );
  }
  
}

class MyButton extends StatelessWidget {
  String text;
  MyButton(String text) {
    this.text = text;
  }
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
    );
  }

}