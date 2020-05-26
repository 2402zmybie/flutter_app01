import 'package:flutter/material.dart';
import '../res/listData.dart';   //引入json文件

/**
 * ListView中循环遍历动态数据
 */
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


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context,index) {
          return ListTile(
            title: Text(listData[index]['title']),
            subtitle: Text(
                listData[index]['author'],
                style: TextStyle(color: Colors.pink)
            ),
            leading: Image.network(listData[index]['imageUrl']),
          );
    });
  }
  
}