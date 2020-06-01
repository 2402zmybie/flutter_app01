import 'package:flutter/material.dart';

class RegisterThirdPage extends StatefulWidget {
  @override
  _RegisterThirdState createState() => _RegisterThirdState();
}

class _RegisterThirdState extends State<RegisterThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第三步-完成注册'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Text('输入密码完成注册'),
          SizedBox(height: 20),
          RaisedButton(
            child: Text('确定'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}

