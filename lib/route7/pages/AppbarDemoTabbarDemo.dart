import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 配置顶部导航的颜色和给顶部导航增加按钮图标
 */
class AppbarDemoTabbarDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //顶部Tab切换的数量
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('AppbarDemoPage'),
          backgroundColor: Colors.red,
          //左侧增加按钮图标 (有左侧的按钮则不显示默认的返回)
//      leading: IconButton(
//        icon: Icon(Icons.menu),
//        onPressed: () {
//          print('menu');
//        },
//      ),
          //右侧增加按钮图标
//          actions: <Widget>[
//            IconButton(
//              icon: Icon(Icons.search),
//              onPressed: () {
//                print('right search');
//              },
//            ),
//            IconButton(
//              icon: Icon(Icons.settings),
//              onPressed: () {
//                print('right settings');
//              },
//            )
//          ],
//          //无论在安卓还是ios 标题都居中显示
//          centerTitle: true,
        //Appbar里面bottom属性 加入TabBar
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: '热门',
                ),
                Tab(
                  text: '推荐',
                )
              ],
            ),
        ),
        //body 里面TabBarView 要和上面的bottom里面的TabBar 数量一致
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第一个tab'),
                ),
                ListTile(
                  title: Text('第一个tab'),
                ),
                ListTile(
                  title: Text('第一个tab'),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第二个tab'),
                ),
                ListTile(
                  title: Text('第二个tab'),
                ),
                ListTile(
                  title: Text('第二个tab'),
                ),
                ListTile(
                  title: Text('第二个tab'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
