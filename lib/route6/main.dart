import 'package:flutter_localizations/flutter_localizations.dart';
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
      //引入国际化的库
      localizationsDelegates: [
        //此处
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        //此处
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],


      //去掉debug图标
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: "/",
//      initialRoute: "/appbarDemo",
//      initialRoute: "/appbarDemoTabbarDemo",
//      initialRoute: "/buttonPage",
//      initialRoute: "/input",
//      initialRoute: "/radiobutton",
    );
  }
}
