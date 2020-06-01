import 'package:flutter/material.dart';
import 'pages/routes/Routes.dart';

void main() => runApp(Myapp());
/**
 * 替换路由 pushReplacementName
 */
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //去掉debug图标
      debugShowCheckedModeBanner: false,
      routes: routes,
//      initialRoute: "/",
//      initialRoute: "/appbarDemo",
//      initialRoute: "/appbarDemoTabbarDemo",
      initialRoute: "/buttonPage",
    );
  }
}
