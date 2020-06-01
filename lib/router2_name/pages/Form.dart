import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {

  String title;
  //构造函数中传入可选的命名参数
  FormPage({this.title = '表单'});

  @override
  Widget build(BuildContext context) {
    //得到路由传值
    dynamic obj =  ModalRoute.of(context).settings.arguments;
    if(obj != null) {
      title = obj['title'];
    }
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Icon(Icons.arrow_back),
      ),
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('我是表单页面'),
          ),
          ListTile(
            title: Text('我是表单页面'),
          ),
          ListTile(
            title: Text('我是表单页面'),
          ),
          ListTile(
            title: Text('我是表单页面'),
          ),
        ],
      ),
    );
  }
}
