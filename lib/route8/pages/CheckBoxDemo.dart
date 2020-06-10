import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 */

class CheckBoxDemoPage extends StatefulWidget {
  @override
  _CheckBoxDemoPageState createState() => _CheckBoxDemoPageState();
}

class _CheckBoxDemoPageState extends State<CheckBoxDemoPage> {

  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CheckBoxDemo'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Checkbox(
                  value: this.flag,
                  onChanged: (v) {
                    setState(() {
                      this.flag = v;
                    });
                  },
                  activeColor: Colors.red,
                )
              ],
            ),
            Row(
              children: <Widget>[
                Text(this.flag ? '选中' : '未选中')
              ],
            ),
            SizedBox(height: 40),
            CheckboxListTile(
              value: this.flag,
              onChanged: (v) {
                setState(() {
                  this.flag = v;
                });
              },
              title: Text('标题'),
              subtitle: Text('这是一个二级标题'),
              selected: this.flag,
            ),
            Divider(),
            CheckboxListTile(
              value: this.flag,
              onChanged: (v) {
                setState(() {
                  this.flag = v;
                });
              },
              title: Text('标题'),
              subtitle: Text('这是一个二级标题'),
              secondary: Icon(Icons.help),
              selected: this.flag,
            ),
          ],
        )
    );
  }
}


