import 'package:flutter/material.dart';
import '../res/listData.dart';

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
    var tempList = listData.map((value) {
      return Container(
        child: Column(
          children: <Widget>[
            Image.network(value['imageUrl']),
            //文字距离上面有12的margin,使用SizedBox
            SizedBox(height: 12,),
            Text(
                value['title'],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20
                ),
            )
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromRGBO(233,233 ,233,0.9),
            width: 1
          )
        ),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        //左右的距离
        crossAxisSpacing: 10,
        //上下的距离
        mainAxisSpacing: 10,
        padding: EdgeInsets.all(10),
        children: this._getListData()
    );
  }

}