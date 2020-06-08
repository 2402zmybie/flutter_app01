

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDialog extends Dialog {

  String title;
  String content;

  MyDialog(this.title, this.content);

  _showTimer(context) {
    //定义定时器(隔3秒关闭定时器)
    var timer;
    timer = Timer.periodic(Duration(milliseconds: 3000), (t) {
      print('执行了定时器');
      Navigator.pop(context);
      t.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {

    _showTimer(context);

    return Material(
      //组件透明度
      type: MaterialType.transparency,
      //Center可以配置左右居中
      child: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.white,
          child: Column(
            //主轴(纵轴) 上下居中
//            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Text('${this.title}'),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          child: Icon(Icons.close),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      )
                    ],
                  )
              ),
              Divider(),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Text('${this.content}',textAlign: TextAlign.left),

              )
            ],
          ),
        ),
      ),
    );
  }
}