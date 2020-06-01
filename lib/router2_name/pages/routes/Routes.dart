import '../Tabs.dart';
import '../Form.dart';
import '../Search.dart';
import '../Product.dart';
import '../ProductInfo.dart';

final routes = {
  '/':(context) => Tabs(),
  '/form':(context) => FormPage(),
  '/search':(context) => SearchPage(),
  '/product': (context) => ProductPage(),
  '/productinfo': (context) => ProductInfo()
};