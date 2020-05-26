import 'package:flutter/material.dart';
import '../res/listData.dart';   //引入json文件

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text( 'ListView')),
        body: HomeContent(),
      ),
    );
  }
  
}

class HomeContent extends StatelessWidget {
  //自定义方法
  List<Widget> _getData() {
    var tempList = listData.map((value) {
      return ListTile(
        title: Text(value['title']),
        subtitle: Text(value['author']),
        leading: Image.network(value['imageUrl']),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {

    return ListView(
      children: this._getData(),
    );
  }
  
}