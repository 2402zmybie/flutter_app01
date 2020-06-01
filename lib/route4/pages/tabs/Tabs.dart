import 'package:flutter/material.dart';
import 'Home.dart';
import 'Category.dart';
import 'Setting.dart';

class Tabs extends StatefulWidget {
  int index;
  Tabs({this.index = 0});

  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {

  int _currentIndex = 0;
  _TabsState(int index) {
    this._currentIndex = index;
  }

  List _items = [
    Homepage(),
    CategoryPage(),
    SettingPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this._items[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
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
        selectedItemColor: Colors.yellow,
        onTap: (index) {
            setState(() {
              this._currentIndex = index;
            });
        },
        currentIndex: this._currentIndex,
        //可以配置多个tabs(大于三个的时候)
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
