import 'package:flutter/material.dart';
import '../res/listData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text( 'Card practice')),
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
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network(listData[index]['imageUrl'],fit: BoxFit.cover,),
              ),
              ListTile(
                    //ClipOval和CircleAvatar 都可以实现圆形图片
//                  leading: ClipOval(
//                  child: Image.network(
//                      listData[index]['imageUrl'],
//                      fit: BoxFit.cover,
//                      width: 60,
//                      height: 60,
//                  ),
//                ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(listData[index]['imageUrl']),
                ),
                title: Text(listData[index]['title']),
                subtitle: Text(listData[index]['author']),
              )
            ],
          ),
        );
      },
    );
  }

}