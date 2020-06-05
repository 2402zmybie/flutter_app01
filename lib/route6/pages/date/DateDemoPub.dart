import 'package:flutter/material.dart';

class DateDemoPubPage extends StatefulWidget {
  @override
  _DateDemoPubPageState createState() => _DateDemoPubPageState();
}

class _DateDemoPubPageState extends State<DateDemoPubPage> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    print(now);
//    //当前日期转换为时间戳
//    var epoch = now.millisecondsSinceEpoch;  //1591341241995
//    print(epoch);
//    //时间戳转换为日期
//    print(DateTime.fromMicrosecondsSinceEpoch(epoch));  //1970-01-19 18:02:21.241995
//
//    //使用库
//    print(formatDate(DateTime.now(), [yyyy, '年', mm, '月', dd]));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('日期演示'),
      ),
      body: Column(
      )
    );
  }
}


