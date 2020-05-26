import 'package:flutter/material.dart';

/**
 *
 * crossAxisCount: int  一行Widget数量
 * scrollDirection: Axis 滚动方法
 * mainAxisSpacing: double 垂直子Widget之间间距
 * corssAxisSpacing: double 水平子Widget之间间距
 * children: <Widget>[]
 * gridDelegate
 */
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('GridView'),),
        body: HomeContent(),
      ),
      theme: ThemeData(),
    );
  }
}

class HomeContent extends StatelessWidget {

  List<Widget> _getListData() {
    List<Widget> list = new List();
    for(var i = 0; i < 20; i++) {
      list.add(Container(
        alignment: Alignment.center,
        color: Colors.blue,
        child: Text(
          '这是第$i条数据',
          style: TextStyle(color: Colors.white,fontSize: 20),
        ),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        //左右有20的距离
        crossAxisSpacing: 20,
        //上下有20的距离
        mainAxisSpacing: 20,
        //宽度和高度的比例
        childAspectRatio: 0.7,
        padding: EdgeInsets.all(10),
        children: this._getListData()
    );
  }

}