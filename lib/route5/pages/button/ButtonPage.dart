import 'package:flutter/material.dart';

class ButtonPageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('button'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: null,
          )
        ],
      ),
      //floatingActionButton
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,color: Colors.black,size: 40,),
        onPressed: () {
          print('floatingActionButton');
        },
        backgroundColor: Colors.yellow,
      ),
      //修改 floatingActionButton的位置(centerDocked属性和底部导航融合在一起)
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SingleChildScrollView(
        child: Column(
          //主轴方向
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              //主轴方向
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('普通凸起按钮'),
                  onPressed: () {
                    print('普通按钮');
                  },
                ),
                SizedBox(width: 10),
                RaisedButton(
                  child: Text('有颜色按钮'),
                  //按钮的背景色
                  color: Colors.blue,
                  //按钮文字颜色
                  textColor: Colors.white,
                  onPressed: () {
                    print('有颜色按钮');
                  },
                ),
                SizedBox(width: 10),
                RaisedButton(
                  child: Text('有阴影按钮'),
                  //按钮的背景色
                  color: Colors.blue,
                  //按钮文字颜色
                  textColor: Colors.white,
                  //按钮阴影
                  elevation: 10,
                  onPressed: () {
                    print('有阴影按钮');
                  },
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    height: 50,
                    width: 200,
                    child: RaisedButton(
                      child: Text('设置宽度和高度的按钮'),
                      //按钮的背景色
                      color: Colors.blue,
                      //按钮文字颜色
                      textColor: Colors.white,
                      //按钮阴影
                      elevation: 10,
                      onPressed: () {
                        print('设置宽度和高度的按钮');
                      },
                    ))
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Container(
                      height: 40,
                      margin: EdgeInsets.all(10),
                      child: RaisedButton(
                        child: Text('拥有高度和margin的自适应按钮'),
                        //按钮的背景色
                        color: Colors.blue,
                        //按钮文字颜色
                        textColor: Colors.white,
                        //按钮阴影
                        elevation: 10,
                        onPressed: () {
                          print('拥有高度和margin的自适应按钮');
                        },
                      ),
                    ))
              ],
            ),
            RaisedButton.icon(
              onPressed: () {
                print('按钮图标');
              },
              icon: Icon(Icons.search),
              label: Text('这是一个带图标的按钮'),
              color: Colors.blue,
              textColor: Colors.white,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('圆角按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  onPressed: () {

                  },
                ),
                Container(
                  height: 80,
                  child: RaisedButton(
                    child: Text('圆形按钮'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 20,
                    //长按水波纹的效果
//                  splashColor: Colors.red,
                    shape: CircleBorder(
                        side: BorderSide(
                            color: Colors.white
                        )
                    ),
                    onPressed: () {

                    },
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text('扁平化按钮'),
                  color: Colors.blue,
                  textColor: Colors.yellow,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 40,
                    margin: EdgeInsets.all(10),
                    child: OutlineButton(
                      child: Text('带边框的按钮'),
//                    color:Colors.red, 无效属性
                      textColor: Colors.black,
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //按钮组
                ButtonBar(
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {},
                      child: Text('按钮组--登录'),
                      elevation: 20,
                      textColor: Colors.white,
                      color: Colors.blue,
                    ),
                    RaisedButton(
                      onPressed: () {},
                      child: Text('按钮组--注册'),
                      elevation: 20,
                      textColor: Colors.white,
                      color: Colors.blue,
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: <Widget>[
                MyButton(text: '自定义按钮',height: 100,width: 200,pressed: () {
                  print('点击了自定义按钮');
                })
              ],
            )
          ],
        ),
      )
    );
  }
}


//自定义按钮组件
class MyButton extends StatelessWidget {
  final text;
  final pressed;
  final double width;
  final double height;
  const MyButton({this.text = "",this.pressed = null,this.width = 80.0,this.height = 30.0});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: this.pressed,
      )
    );
  }
}

