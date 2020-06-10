import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

const String MIN_DATETIME = '2010-05-12';
const String MAX_DATETIME = '2021-11-25';
const String INIT_DATETIME = '2019-05-17';

class DateDemoPubPage extends StatefulWidget {
  @override
  _DateDemoPubPageState createState() => _DateDemoPubPageState();
}

class _DateDemoPubPageState extends State<DateDemoPubPage> {

  DateTime _dateTime = DateTime.now();
//  String _format = 'yyyy-MMMM-dd';  //显示年月日
  String _format = 'yy年M月d日    EEE,H时:m分';

  _showDataPicker() {
    //弹出第三方日期组件
    DatePicker.showDatePicker(
      context,
      onMonthChangeStartWithFirstDate: true,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
        confirm: Text('确定', style: TextStyle(color: Colors.red)),
      ),
      minDateTime: DateTime.parse(MIN_DATETIME),
      maxDateTime: DateTime.parse(MAX_DATETIME),
      //初始化时间
      initialDateTime: _dateTime,
      dateFormat: _format,
      locale: DateTimePickerLocale.zh_cn,
      pickerMode: DateTimePickerMode.datetime, // show TimePicker
      onClose: () => print("----- onClose -----"),
      onCancel: () => print('onCancel'),
      onChange: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
    );
  }
  
  @override
  void initState() {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Row(
                  children: <Widget>[
                    Text(formatDate(_dateTime, [yyyy, '年', mm, '月', dd, ' ', HH, ':',nn])),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: _showDataPicker,
              )
            ],
          )
        ],
      )
    );
  }
}


