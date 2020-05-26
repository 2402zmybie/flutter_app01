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
 
  //设置数据
  List list = new List();
  HomeContent() {
    for(var i = 0; i < 20; i++) {
      this.list.add('我是第$i条数据');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: this.list.length,
        itemBuilder: (context,index) {
          return ListTile(
            title: Text(this.list[index])
          );
        }
    );
  }
  
}