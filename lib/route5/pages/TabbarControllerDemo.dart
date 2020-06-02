import 'package:flutter/material.dart';

/**
 *1 TabbarController 实现tab切换,必须是StatefulWidget
 * 2 SingleTickerProviderStateMixin
 * 3 初始化 TabController
 * 4 在TabBar中加入 controller属性
 * 5 TabBarView中加入 controller属性
 */
class TabbarControllerPage extends StatefulWidget {
  @override
  _TabbarControllerPageState createState() => _TabbarControllerPageState();
}

class _TabbarControllerPageState extends State<TabbarControllerPage> with SingleTickerProviderStateMixin{

  TabController _tabController;

  //生命周期函数
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: 2
    );
    _tabController.addListener(() {
      print('选中的索引值: ${this._tabController.index}');
    });
  }
  //生命周期函数(组件销毁的时候)
  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabbarControllerPage'),
        bottom: TabBar(
          //注意 一定要加上controller属性
          controller: this._tabController,
          tabs: <Widget>[
            Tab(
              text: '热销',
            ),
            Tab(
              text: '推荐',
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          Center(
            child: Text('热销'),
          ),
          Center(
            child: Text('推荐'),
          ),
        ],
      ),
    );
  }
}
