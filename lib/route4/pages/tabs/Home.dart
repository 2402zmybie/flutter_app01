
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
              child: Text('跳转到appBarTabBar'),
              onPressed: () {
                  Navigator.pushNamed(context, '/appbarDemoTabbarDemo');
              },
            ),
            RaisedButton(
              child: Container(
                child: Text('TabController页面实现tab切换,适用于请求数据和刷新功能'),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/tabbarController');
              },
            ),
            RaisedButton(
              child: Text('buttonPage'),
              onPressed: () {
                Navigator.pushNamed(context, '/buttonPage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
