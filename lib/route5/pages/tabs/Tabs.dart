import 'package:flutter/material.dart';
import 'Home.dart';
import 'Category.dart';
import 'Setting.dart';

/**
 * 实现类似于闲鱼的 底部floatingActionButton的底部tabs浮动按钮
 */
class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _items = [Homepage(),Homepage(), CategoryPage(), SettingPage(),SettingPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      //浮动按钮(修改大小)
      floatingActionButton: Container(
        height: 80,
        width: 80,
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white
        ),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              this._currentIndex = 2;
            });
          },
          backgroundColor: this._currentIndex == 2 ? Colors.red : Colors.yellow,
        ),
      ),
      //改动浮动按钮到中间
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: this._items[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('消息')),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text('分类')),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), title: Text('购物车')),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text('设置')),
        ],
        selectedItemColor: Colors.yellow,
        currentIndex: this._currentIndex,
        onTap: (index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        //可以配置多个tabs(大于三个的时候)
        type: BottomNavigationBarType.fixed,
      ),
      //左侧侧边栏
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: UserAccountsDrawerHeader(
                        accountName: Text('热心网友小何'),
                        accountEmail: Text('xxxx@qq.com'),
                        //圆形的头像图片
                        currentAccountPicture: CircleAvatar(
                          backgroundImage: NetworkImage(''),
                        ),
//                      decoration: BoxDecoration(
//                        //背景图片
//                        image: DecorationImage(
//                          image: NetworkImage('')
//                        )
//                      ),
                    )
                ),
              ],
            ),
            ListTile(
              title: Text('我的空间'),
              leading: CircleAvatar(child: Icon(Icons.home)),
            ),
            Divider(),
            ListTile(
              title: Text('用户中心'),
              leading: CircleAvatar(child: Icon(Icons.people)),
              onTap: () {
                //隐藏侧边栏
                Navigator.of(context).pop();
                //跳转到用户中心界面
                Navigator.pushNamed(context, '/user');
              },
            ),
            Divider(),
            ListTile(
              title: Text('设置中心'),
              leading: CircleAvatar(child: Icon(Icons.settings)),
            )
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Text('右侧侧边栏'),
      ),
    );
  }
}
