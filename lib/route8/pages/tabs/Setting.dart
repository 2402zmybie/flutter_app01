import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: Text('我是一个文本'),
                ),
                ListTile(
                  title: Text('我是一个文本'),
                ),
                ListTile(
                  title: Text('我是一个文本'),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[
                RaisedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text('跳转到登录页面'),
                ),
                RaisedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/registerFirst');
                  },
                  child: Text('跳转到注册页面'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

