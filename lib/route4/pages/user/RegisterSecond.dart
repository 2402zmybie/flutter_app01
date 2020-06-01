import 'package:flutter/material.dart';

class RegisterSecondPage extends StatefulWidget {
  @override
  _RegisterSecondPageState createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第二步-验证码'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Text('输入验证码'),
          SizedBox(height: 20),
          RaisedButton(
            child: Text('下一步'),
            onPressed: () {
//              Navigator.of(context).pushReplacementNamed('/registerThird');
              Navigator.of(context).pushNamed('/registerThird');
            },
          )
        ],
      ),
    );
  }
}
