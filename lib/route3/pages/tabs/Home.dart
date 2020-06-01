
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('跳转到appBarTabBar'),
              onPressed: () {
                  Navigator.pushNamed(context, '/appbarDemoTabbarDemo');
              },
            ),
            RaisedButton(
              child: Row(
                children: <Widget>[
                  Text('TabController页面实现tab切换,适用于请求数据和刷新功能')
                ],
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/tabbarController');
              },
            )
          ],
        ),
      ),
    );
  }
}
