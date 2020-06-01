import 'package:flutter/material.dart';
import '../tabs/Tabs.dart';

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
              //返回根
//              Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => route == null);
              Navigator.of(context).pushAndRemoveUntil(
                new MaterialPageRoute(builder: (context) => new Tabs(index: 2)),
                  (route) => route == null
              );
            },
          )
        ],
      ),
    );
  }
}

