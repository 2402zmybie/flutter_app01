
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            //title里面直接放 组件,
            title: Row(
              children: <Widget>[
                Expanded(
                  child: TabBar(
                    //宽度不够可以滑动
                    isScrollable: true,
                    //指示器的颜色
                    indicatorColor: Colors.red,
                    //指示器文字的颜色
                    labelColor: Colors.red,
                    //未选中指示器的颜色
                    unselectedLabelColor: Colors.white,
                    //指示器line的宽度和文字等宽
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: <Widget>[
                      Tab(text: '分类热销'),
                      Tab(text: '分类推荐'),
                      Tab(text: '分类推荐'),
                      Tab(text: '分类推荐'),
                    ],
                  ),
                )
              ],
            ),
          ),
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
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('第三个tab'),
                  ),
                  ListTile(
                    title: Text('第三个tab'),
                  ),
                  ListTile(
                    title: Text('第三个tab'),
                  ),
                  ListTile(
                    title: Text('第三个tab'),
                  ),
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('第四个tab'),
                  ),
                  ListTile(
                    title: Text('第四个tab'),
                  ),
                  ListTile(
                    title: Text('第四个tab'),
                  ),
                  ListTile(
                    title: Text('第四个tab'),
                  ),
                ],
              )
            ],
          ),
        )
    );
  }
}

