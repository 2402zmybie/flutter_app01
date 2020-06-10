
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DioDemo1Page extends StatefulWidget {
  @override
  _DioDemo1PageState createState() => _DioDemo1PageState();
}

class _DioDemo1PageState extends State<DioDemo1Page> {

  var apiUrl = 'http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1';
  var _list = [];

  _getData() async {
    var result = await Dio().get(apiUrl);
    //json.decode(result.data) 是一个Map类型数据
//    this._list = json.decode(result.data)['result'];

    //TODO 获取数据后一定要调用setState 才会重新渲染页面
    setState(() {
      this._list = json.decode(result.data)['result'];
    });
  }

  @override
   void initState() {
    super.initState();

    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dio请求')          ,
      ),
      body: Container(
        child: this._list.length > 0 ? ListView.builder(itemBuilder: (value,index) {
          return ListTile(
            title: Text(this._list[index]['title']),
          );
        }, itemCount:  this._list.length,) : Text('加载中')
      ),
    );
  }
}
