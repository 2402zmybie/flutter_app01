/*
* 如果想要改变页面的数据 使用statefulWidget
* 快捷生成 stful
* */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text( 'statefulWidget')),
        body: HomePage(),
      ),
    );
  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Chip(
            label: Text("${this.num}")
        ),
        RaisedButton(
            onPressed: () {
              setState(() {
                this.num ++;
              });
            },
            child: Text('增加'),
        )
      ],
    );
  }
}


