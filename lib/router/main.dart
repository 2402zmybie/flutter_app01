import 'package:flutter/material.dart';
import 'pages/Tabs.dart';

void main() => runApp(MyApp());

/**
 * 小项目里面使用的 普通路由
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
    );
  }
}
