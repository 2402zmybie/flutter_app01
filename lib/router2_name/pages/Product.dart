import 'package:flutter/material.dart';

/**
 * ctrl + alt + l :格式化代码
 */
class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  //首页跳转的传值
  String id;

  @override
  Widget build(BuildContext context) {
    dynamic obj = ModalRoute.of(context).settings.arguments;
    if (obj != null) {
      id = obj['id'];
    }
    return Scaffold(
        appBar: AppBar(
          title: Text('商品页面'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('这是一个商品的页面id: ${this.id}'),
              RaisedButton(
                child: Text('跳转到商品详情页面'),
                onPressed: () {
                  Navigator.pushNamed(context, '/productinfo',arguments: {"pid": "55"});
                },
                color: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary,
              ),
            ]));
  }
}
