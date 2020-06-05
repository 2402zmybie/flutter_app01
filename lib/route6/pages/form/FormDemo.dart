import 'package:flutter/material.dart';

/**
 *表单组件的Demo
 */
class FormDemoPage extends StatefulWidget {
  @override
  _FormDemoPageState createState() => _FormDemoPageState();
}

class _FormDemoPageState extends State<FormDemoPage> {
  String username;
  int sex = 1;
  List hobby = [
    {
      'checked': true,
      'title':'吃饭',
    },
    {
      'checked': false,
      'title':'睡觉',
    },
    {
      'checked': true,
      'title':'写代码',
    },
  ];
  String info = '';

  List<Widget> _getHobby() {
    List<Widget> tempList = [];
    //返回多个checkbox
    for(var i = 0; i < this.hobby.length; i++) {
      tempList.add(
        Row(
          children: <Widget>[
            Text(this.hobby[i]['title'] + ':'),
            Checkbox(
              value: this.hobby[i]['checked'],
              onChanged: (v) {
                setState(() {
                  this.hobby[i]['checked'] = v;
                });
              },
            )
          ],
        )
      );

    }
    return tempList;
  }

  void _sexChanged(value) {
    setState(() {
      this.sex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('学员信息登记系统'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: '输入用户信息'),
              onChanged: (value) {
                this.username = value;
              },
            ),
            Row(
              children: <Widget>[
                Text('男'),
                Radio(
                    value: 1,
                    groupValue: this.sex,
                    onChanged: this._sexChanged
                ),
                SizedBox(width: 20),
                Text('女'),
                Radio(
                    value: 2,
                    groupValue: this.sex,
                    onChanged: this._sexChanged
                )
              ],
            ),
            //爱好
            Wrap(
              children: this._getHobby()
            ),
            //描述
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                  hintText: '描述',
                  border: OutlineInputBorder()
              ),
              onChanged: (value) {
                setState(() {
                  this.info = value;
                });
              },
            ),

            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text('登记'),
                onPressed: () {
                  print(this.sex);
                  print(this.username);
                  print(this.hobby);
                  print(this.info);
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
