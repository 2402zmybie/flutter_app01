import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../bean/wan_android_json_bean_entity.dart';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
//引入自定义组件Dialog
import '../../components/MyDialog.dart';


/**
 * flutter中网络请求
 */
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  var _getTextData = "";

  @override
  void initState() {
//    map -> json (encode)
    var userinfo = {
      "username":"张三",
      "age": 20
    };
    var a = json.encode(userinfo);
    print(a);
    print(a is String);

    //json -> map (decode)
    String userinfoStr = '{"username":"zhangsan","age": 20}';
    Map u = json.decode(userinfoStr);
    print(u);
    print(u['username']);  //zhangsan
  }

  //get请求数据
  _getData() async {
    var apiUrl = 'https://wanandroid.com/wxarticle/chapters/json';
    var result = await http.get(apiUrl);
    if(result.statusCode == 200) {
      print(result.body);
      var bodyData = result.body;
      //序列化为对象, 取出集合
      List dataList = json.decode(bodyData)['data'];
      setState(() {
//        json.decode(personJson) 方法返回的类型为 _InternalLinkedHashMap<String, dynamic>
//        this._getTextData = wanAndroidJsonBeanEntity.data[0].name;
        this._getTextData = dataList[0]['name'];
      });
    }else {
      print(result.statusCode);
    }
  }

  //post提交数据
  _postData() async {
    var apiUrl = 'https://www.wanandroid.com/user/register';
    var result = await http.post(apiUrl,body: {'username': '小张小何1','password':'123456','repassword':'123456'});
    if(result.statusCode == 200) {
      //{"data":{"admin":false,"chapterTops":[],"collectIds":[],"email":"","icon":"","id":66448,"nickname":"小张小何1","password":"","publicName":"小张小何1","token":"","type":0,"username":"小张小何1"},"errorCode":0,"errorMsg":""}
      print('post提交返回${result.body}');
    }else {
      print('post提交失败${result.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('get请求显示数据: ${this._getTextData}'),
            RaisedButton(
              child: Text('get请求'),
              onPressed: _getData
            ),
            RaisedButton(
              child: Container(
                child: Text('post提交数据'),
              ),
              onPressed: _postData
            ),
            RaisedButton(
              child: Text('跳转页面 渲染数据'),
              onPressed: () {
                  Navigator.pushNamed(context, '/httpdemo');
              }
            ),
            RaisedButton(
                child: Text('跳转页面 渲染数据2'),
                onPressed: () {
                  Navigator.pushNamed(context, '/httpdemolistviewbuilder');
                }
            ),
            RaisedButton(
                child: Text('Dio请求数据'),
                onPressed: () {
                  Navigator.pushNamed(context, '/diodemo1page');
                }
            ),
          ],
        ),
      ),
    );
  }
}
