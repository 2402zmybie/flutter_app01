import 'package:flutter/material.dart';
import 'pages/routes/Routes.dart';


void main() => runApp(MyApp());

/**
 * 命名路由, 命名路由传值
 */
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //在MaterialApp 中配置命名路由规则, 对路由进行统一管理
      routes: routes,
      initialRoute: '/',

    );
  }
}
