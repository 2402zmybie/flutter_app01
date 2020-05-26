import 'package:flutter/material.dart';
import '../res/listData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('GridView'),),
        body: HomeContent(),
      ),
      theme: ThemeData(),
    );
  }
}

class HomeContent extends StatelessWidget {

  Widget _getListData(context,index) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(listData[index]['imageUrl']),
          //文字距离上面有12的margin,使用SizedBox
          SizedBox(height: 12,),
          Text(
            listData[index]['title'],
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
          border: Border.all(
              color: Color.fromRGBO(233,233 ,233,0.9),
              width: 1
          )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: listData.length,
        //gridDelegate 控制布局, 主要用在GridView.builder里面
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 2,
        ),
        itemBuilder: this._getListData );
  }

}