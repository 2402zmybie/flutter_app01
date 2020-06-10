import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 配置顶部导航的颜色和给顶部导航增加按钮图标
 */
class AppbarDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppbarDemoPage'),
//        backgroundColor: Colors.red,
      //左侧增加按钮图标 (有左侧的按钮则不显示默认的返回)
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          print('menu');
        },
      ),
        //右侧增加按钮图标
      actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('right search');
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              print('right settings');
            },
          )
        ],
        //无论在安卓还是ios 标题都居中显示
        centerTitle: true,
      ),
      body: Text('111111111'),
    );
  }
}
