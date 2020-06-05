import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('跳转到表单界面'),
              onPressed: () {
                Navigator.pushNamed(context, '/input');
              },
            ),
            RaisedButton(
              child: Container(
                child: Text('CheckBox'),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/checkbox');
              },
            ),
            RaisedButton(
              child: Text('RadioButton'),
              onPressed: () {
                Navigator.pushNamed(context, '/radiobutton');
              },
            ),
            RaisedButton(
                child: Text('表单案例练习'),
                onPressed: () {
                  Navigator.pushNamed(context, '/formdemo');
                }),
            RaisedButton(
                child: Text('日期演示页面'),
                onPressed: () {
                  Navigator.pushNamed(context, '/datedemo');
                }),
            RaisedButton(
                child: Text('第三方日期组件演示页面'),
                onPressed: () {
                  Navigator.pushNamed(context, '/datedemopub');
                })
          ],
        ),
      ),
    );
  }
}
