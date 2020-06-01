import '../tabs/Tabs.dart';
import '../user/Login.dart';
import '../user/RegisterFirst.dart';
import '../user/RegisterSecond.dart';
import '../user/RegisterThird.dart';

var routes = {
  //跟路由 直接就是底部的tab切换
  '/': (context) => Tabs(),
  "/login": (context) => LoginPage(),
  '/registerFirst': (context) => RegisterFirstPage(),
  '/registerSecond': (context) => RegisterSecondPage(),
  '/registerThird': (context) => RegisterThirdPage()
};