import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
    return MyButton("第一季");
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