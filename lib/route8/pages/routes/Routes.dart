
import '../tabs/Tabs.dart';
import '../user/Login.dart';
import '../user/RegisterFirst.dart';
import '../user/RegisterSecond.dart';
import '../user/RegisterThird.dart';
import '../AppbarDemo.dart';
import '../AppbarDemoTabbarDemo.dart';
import '../TabbarControllerDemo.dart';
import '../user/User.dart';
import '../button/ButtonPage.dart';
import '../InputDemo.dart';
import '../CheckBoxDemo.dart';
import '../RadioButtonDemo.dart';
import '../form/FormDemo.dart';
import '../date/DateDemo.dart';
import '../date/DateDemoPub.dart';
import '../swiper/SwiperDemo.dart';
import '../http/Http.dart';
import '../http/HttpListViewBuilder.dart';
import '../dio/DioDemo1.dart';

var routes = {
  //跟路由 直接就是底部的tab切换
  '/': (context) => Tabs(),
  "/login": (context) => LoginPage(),
  '/registerFirst': (context) => RegisterFirstPage(),
  '/registerSecond': (context) => RegisterSecondPage(),
  '/registerThird': (context) => RegisterThirdPage(),
  '/appbarDemo': (context) => AppbarDemoPage(),
  '/appbarDemoTabbarDemo':(context) => AppbarDemoTabbarDemoPage(),
  '/tabbarController': (context) => TabbarControllerPage(),
  '/user': (context) => UserPage(),
  '/buttonPage': (context) => ButtonPageDemo(),
  '/input': (context) => InputDemoPage(),
  '/checkbox': (context) => CheckBoxDemoPage(),
  '/radiobutton': (context) => RadioButtonDemoPage(),
  '/formdemo': (context) => FormDemoPage(),
  '/datedemo': (context) => DateDemoPage(),
  '/datedemopub': (context) => DateDemoPubPage(),
  '/swiperdemo': (context) => SwiperDemoPage(),
  '/httpdemo': (context) => HttpDemo(),
  '/httpdemolistviewbuilder': (context) => HttpDemoListViewBuilder(),
  '/diodemo1page': (context) => DioDemo1Page()
};