import 'package:flutter/material.dart';
import '../res/listData.dart';

void main() => runApp(MyApp());

/**
 * Expanded (类似于weight): 用的很多
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
    return Row(
      children: <Widget>[
        //左侧固定宽度 100
        IconContainer(Icons.search,color:Colors.red,size: 11),
        //右侧撑满
        Expanded(
          flex: 1,
          child: IconContainer(Icons.home,color:Colors.orange,size: 20),
        )
      ],
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