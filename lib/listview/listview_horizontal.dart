import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text( 'ListView')),
        body: HomeContent(),
      ),
    );
  }

}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180,
            color: Colors.red,
          ),
          Container(
            width: 180,
            color: Colors.orange,
            child: ListView(
              children: <Widget>[
                Image.network("https://www.itying.com/images/flutter/1.png"),
                Text("我是纵向ListView的Text")
              ],
            ),
          ),
          Container(
            width: 180,
            color: Colors.yellow,
          ),
          Container(
            width: 180,
            color: Colors.blue,
          ),
          Container(
            width: 180,
            color: Colors.pink,
          ),
          Container(
            width: 180,
            color: Colors.lightBlue,
          ),
        ],
      ),
    );
  }

}