import 'package:flutter/material.dart';
import 'pages/routes/Routes.dart';

void main() => runApp(Myapp());
/**
 *  普通路由跳转 多层页面中有一个按钮直接返回到根
 *  pushAndRemoveUntil
 */
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      initialRoute: "/",
    );
  }
}
