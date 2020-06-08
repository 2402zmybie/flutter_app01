import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 38讲  13:06
 * TextField
 */
class InputDemoPage extends StatefulWidget {
  @override
  _InputDemoPageState createState() => _InputDemoPageState();
}

class _InputDemoPageState extends State<InputDemoPage> {

  var _username = new TextEditingController();  //初始化的时候给表单赋值
  var _password;

  @override
  void initState() {
    super.initState();
    _username.text = '初始值';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField'),
      ),
      body: Padding(padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: '请输入用户名'
              ),
              controller: this._username,
              //当输入的时候 会触发onChanged
              onChanged: (value) {
                this._username.text = value;
              },
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: '请输入密码'
              ),
              //当输入的时候 会触发onChanged
              onChanged: (value) {
                setState(() {
                  this._password = value;
                });
              },
            ),
            SizedBox(height: 20),
            Container(
              //width: double.infinity表示  Container是自适应的,宽度和外面的宽度一致
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text('登录'),
                onPressed: () {
                  //点击按钮获取表单里面的内容
                  print('用户名${this._username.text}');
                  print('密码${this._password}');
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  hintText: '请输入搜索的内容',
                  border: OutlineInputBorder()
              ),
            ),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                  hintText: '多行文本框',
                  border: OutlineInputBorder()
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: '密码框',
                  border: OutlineInputBorder()
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: '用户名',
                  border: OutlineInputBorder()
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: '密码',
                  labelStyle: TextStyle(
                      color: Colors.red,
                      fontSize: 30
                  ),
                  border: OutlineInputBorder()
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  icon: Icon(Icons.people),
                  hintText: '请输入用户名'
              ),
            ),

          ],
        ),
      ),
    );
  }
}


