import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo2"),
        ),
        body: MyHomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
    );
  }
}

//Flutter 图片组件
/**
 * Image.network 远程图片, 实现圆角以及实现圆形图片
 * https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1589964218395&di=ae2422668aa7e03ed27f6a31b0afefae&imgtype=0&src=http%3A%2F%2Ft9.baidu.com%2Fit%2Fu%3D583874135%2C70653437%26fm%3D79%26app%3D86%26f%3DJPEG%3Fw%3D3607%26h%3D2408
 */
class MyHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
       child: Container(
         child: ClipOval(
           child: Image.network(
             "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1589964218395&di=ae2422668aa7e03ed27f6a31b0afefae&imgtype=0&src=http%3A%2F%2Ft9.baidu.com%2Fit%2Fu%3D583874135%2C70653437%26fm%3D79%26app%3D86%26f%3DJPEG%3Fw%3D3607%26h%3D2408",
             height: 100,
             width: 100,
             fit: BoxFit.cover,
           ),

         ),
       ),
    );
  }

}