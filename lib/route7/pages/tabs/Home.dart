import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
//引入自定义组件Dialog
import '../../components/MyDialog.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  _alertDialog() async{
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('提示信息'),
            content: Text('您确定要删除吗?'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    print('取消');
                    Navigator.pop(context,'Cancle');
                  },
                  child: Text('取消')
              ),
              FlatButton(
                  onPressed: () {
                    print('确定');
                    Navigator.pop(context,'Ok');
                  },
                  child: Text('确定')
              )
            ],
          );
        }
    );

    print(result);
  }

  _simpleDialog() async{
    var result = await showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text('选择对应内容'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('option A'),
              onPressed: () {
                print('click ontion A');
                Navigator.pop(context,'A');
              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text('option B'),
              onPressed: () {
                print('click ontion B');
                Navigator.pop(context,'B');
              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text('option C'),
              onPressed: () {
                print('click ontion C');
                Navigator.pop(context,'C');
              },
            ),
          ],
        );
      }
    );
    print(result);
  }

  _modelBottomSheet() {
    showModalBottomSheet(context: context, builder: (context) {
      return Container(
        height: 200,
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('分享 A'),
              onTap: () {
                Navigator.pop(context,'分享 A');
              },
            ),
            Divider(),
            ListTile(
              title: Text('分享 B'),
              onTap: () {
                Navigator.pop(context,'分享 B');
              },
            ),
            Divider(),
            ListTile(
              title: Text('分享 C'),
              onTap: () {
                Navigator.pop(context,'分享 C');
              },
            ),
          ],
        ),
      );
    });
  }

  _toast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('alert弹出框-AlertDialog'),
              onPressed: _alertDialog
            ),
            RaisedButton(
              child: Container(
                child: Text('select弹出框-SimpleDialog'),
              ),
              onPressed: _simpleDialog
            ),
            RaisedButton(
              child: Text('ActionSheet底部弹出框-showModalBottomSheet'),
              onPressed: _modelBottomSheet
            ),
            RaisedButton(
                child: Text('toast-fluttertoast第三方库'),
                onPressed: _toast
            ),
            RaisedButton(
                child: Text('显示自定义Dialog'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return MyDialog(
                        '我是传入的title',
                        '我是传入的content'
                      );
                    }
                  );
                }
            )
          ],
        ),
      ),
    );
  }
}
