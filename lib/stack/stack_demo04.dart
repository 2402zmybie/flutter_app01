import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/**
 * Stack结合Positioned使用
 * Positioned里面没有alignment, 有top left right bottom来控制方位  (绝对布局)
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
            Positioned(
              left: 10,
              child: Icon(Icons.home,size: 40,color: Colors.white,),
            ),
            Positioned(
              bottom: 0,
              left: 100,
              child: Icon(Icons.search,size: 30,color: Colors.blue,)
            ),
            Positioned(
              right: 0,
              child: Icon(Icons.settings_applications,size: 60,color: Colors.orange,),
            )
          ],
        ),
      ),
    );
  }
  
}