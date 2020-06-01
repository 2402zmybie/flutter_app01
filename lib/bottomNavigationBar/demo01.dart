/*

bottomNavigationBar
抽离Scaffold 组件为Tabs组件
* */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs()
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('bottomNavigationBar'),
    );
  }
}

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text( 'bottomNavigationBar')),
      body: HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        //第二个选中
        currentIndex: 1,
        onTap: (int index) {
          print(index);
        },
        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.home),
              title: Text('首页')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text('分类')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('设置')
          ),
        ],
      ),
    );
  }
}







