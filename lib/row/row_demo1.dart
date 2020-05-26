import 'package:flutter/material.dart';
import '../res/listData.dart';

void main() => runApp(MyApp());

/**
 * mainAxisAlignment: 主轴的排序方式
 * crossAxisAlignment: 次轴的排序方式
 * children: 组件子元素
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('row'),),
        body: HomeContent(),
      ),
      theme: ThemeData(),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800.0,
      width: 300.0,
      color: Colors.pink,
      child: Row(
        //spaceEvenly 表示元素等分排列在父容器中(元素和边上,元素之间距离全部相同)
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //crossAxisAlignment 这个属性用的比较少
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          IconContainer(Icons.search,color:Colors.red,size: 11),
          IconContainer(Icons.home,color:Colors.orange,size: 20),
          IconContainer(Icons.select_all,color:Colors.blue,size: 30),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class IconContainer extends StatelessWidget {
  //图标大小
  double size = 32.0;
  //背景颜色
  Color color = Colors.red;
  IconData icon;
  IconContainer(this.icon,{this.color,this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: this.color,
      child: Center(
        child: Icon(
          this.icon,
          size: this.size,
          color: Colors.white,
        ),
      ),
    );
  }

}