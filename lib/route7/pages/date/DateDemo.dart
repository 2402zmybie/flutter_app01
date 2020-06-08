import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DateDemoPage extends StatefulWidget {
  @override
  _DateDemoPageState createState() => _DateDemoPageState();
}

class _DateDemoPageState extends State<DateDemoPage> {

  var now = DateTime.now();
  var _nowTime =  TimeOfDay(hour: 12, minute: 20);

  _showDatePicker() async{
    //第一种获取选择日期的方法
//     showDatePicker(context: context, initialDate: now, firstDate: DateTime(1980), lastDate: DateTime(2100))
//     .then((value) {
//       print(value);
//     });

    var result = await showDatePicker(context: context, initialDate: now, firstDate: DateTime(1980), lastDate: DateTime(2100));
    print("选择日期: ${result}");
    setState(() {
      this.now = result;
    });
  }

  _showTimePicker() async{
    var result = await showTimePicker(context: context, initialTime: _nowTime,);
    setState(() {
      _nowTime = result;
    });
  }

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //日期选择
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(formatDate(now, [yyyy, '年', mm, '月', dd])),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: () {
                  _showDatePicker();
                },
              ),
              //时间选择
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('${_nowTime.format(context)}'),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: () {
                  _showTimePicker();
                },
              )
            ],
          )
        ],
      )
    );
  }
}


