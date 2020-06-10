import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 */

class RadioButtonDemoPage extends StatefulWidget {
  @override
  _RadioButtonDemoPageState createState() => _RadioButtonDemoPageState();
}

class _RadioButtonDemoPageState extends State<RadioButtonDemoPage> {
  var sex = 1;
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioButtonDemo'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
//            Row(
//              children: <Widget>[
//                Text('男'),
//                //Radio 是一个按钮组 (groupValue里面的值是一样的  则表示是一个按钮组)
//                Radio(value: 1, groupValue: this.sex, onChanged: (v) {
//                  setState(() {
//                    this.sex = v;
//                  });
//                }),
//                Text('女'),
//                Radio(value: 2, groupValue: this.sex, onChanged: (v) {
//                  setState(() {
//                    this.sex = v;
//                  });
//                })
//              ],
//            ),
//            Row(
//              children: <Widget>[
//                Text('${this.sex}'),
//                Text(this.sex == 1 ? '男' : '女')
//              ],
//            ),

            SizedBox(height: 40),

            RadioListTile(
              value: 1,
              groupValue: this.sex,
              onChanged: (v) {
                setState(() {
                  this.sex = v;
                });
              },
              title: Text('标题'),
              subtitle: Text('第二个标题'),
              secondary: Icon(Icons.help),
              selected: this.sex == 1,   //文字高亮
            ),
            RadioListTile(
              value: 2,
              groupValue: this.sex,
              onChanged: (v) {
                setState(() {
                  this.sex = v;
                });
              },
              title: Text('标题'),
              subtitle: Text('第二个标题'),
              secondary: Icon(Icons.help),
              selected: this.sex == 2,
            ),

            SizedBox(height: 40),

            Switch(
              value: this.flag,
              onChanged: (v) {
                setState(() {
                  this.flag = v;
                  print('开关状态${v}');
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
