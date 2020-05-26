import 'package:flutter/material.dart';
import '../res/listData.dart';

void main() => runApp(MyApp());

/**
 * 练习布局
 * //元素与元素之间的间距 可以用margin, 但使用最多的是SizedBox
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('practice'),),
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
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child:Container(
                  height: 180,
                  color: Colors.black,
                  child: Text('你好Flutter',style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  height: 180,
                  child: Image.network('https://www.itying.com/images/flutter/1.png',fit: BoxFit.cover),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                flex: 1,
                child: Container(
                  height: 180,
                  child: ListView(
                    children: <Widget>[
                      Container(
                        height: 85,
                        child: Image.network('https://www.itying.com/images/flutter/3.png',fit: BoxFit.cover),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 85,
                        child: Image.network('https://www.itying.com/images/flutter/4.png',fit: BoxFit.cover),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      )
    );
  }
}
