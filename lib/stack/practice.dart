/*
* 需求: 显示图片List 并且文字重叠在图片底部居中
* */
import 'package:flutter/material.dart';
import '../res/listData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text( 'Stack ListView practice')),
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
          return Container(
            color: Colors.black,
            child: AspectRatio(
                aspectRatio: 2 /1,
                child: Row(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Align(
                          child: Image.network(listData[index]['imageUrl'],fit:BoxFit.cover),
                          alignment: Alignment.topLeft,
                        ),
                        Align(
                          child: Text(
                            listData[index]['title'],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30
                            ),
                          ),
                          alignment: Alignment.bottomCenter,
                        )
                      ],
                    )
                  ],
                )
            ),
          );
        });
  }

}