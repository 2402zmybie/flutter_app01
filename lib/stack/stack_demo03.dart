import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/**
 * Stack结合Align使用
 */
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text( 'Stack')),
        body: HomeContent(),
      ),
    );
  }
  
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          //使用alignment就所有的组件全部显示在一起
//          alignment: Alignment.center,
          children: <Widget>[
            //使用Align 可以确定每个元素显示的方位, 相对于最外面的容器进行定位
            Align(
              alignment: Alignment(1,-0.2),
              child: Icon(Icons.home,size: 40,color: Colors.white,),
            ),
            Align(
              alignment: Alignment.center,
              child: Icon(Icons.search,size: 30,color: Colors.blue,)
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(Icons.settings_applications,size: 60,color: Colors.orange,),
            )
          ],
        ),
      ),
    );
  }
  
}