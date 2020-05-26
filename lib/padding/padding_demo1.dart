import 'package:flutter/material.dart';
import '../res/listData.dart';

void main() => runApp(MyApp());

/**
 * 在html中常见的布局标签都有padding属性, 但是Flutter中很多Widget是没有padding属性, 这个时候我们可以用Padding组件处理容器与子元素之间的间距
 * Padding组件有两个参数:
 * child: 子组件
 * padding: padding值, EdgeInsetss设置填充值
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Padding'),),
        body: HomeContent(),
      ),
      theme: ThemeData(),
    );
  }
}

class HomeContent extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //一行显示两个
              crossAxisCount: 2,
              //图片宽高比
              childAspectRatio: 1.7
          ),
          itemCount: listData.length,
          itemBuilder: (context,index) {
            return Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(listData[index]['imageUrl'],fit: BoxFit.cover),
            );
          }),
    );
  }

}