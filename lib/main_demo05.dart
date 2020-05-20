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
 * Image.asset  本地图片
 * Image.network 远程图片
 */
class MyHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
       child: Container(
         child: Image.network(
           "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1589964218395&di=ae2422668aa7e03ed27f6a31b0afefae&imgtype=0&src=http%3A%2F%2Ft9.baidu.com%2Fit%2Fu%3D583874135%2C70653437%26fm%3D79%26app%3D86%26f%3DJPEG%3Fw%3D3607%26h%3D2408",
           alignment: Alignment.topLeft,
           color: Colors.blue,
           //蒙层效果
           colorBlendMode: BlendMode.screen,
           //fit 属性用来控制图片的拉伸和挤压, 这都是根据父容器来的,
           // BoxFit.fill: 全图显示, 图片会被拉伸,并充满父容器
           //BoxFill.contain: 全图显示, 显示原比例,可能会有空隙
           //BoxFit.cover: 显示可能拉伸, 可能裁切,充满(图片要充满整个容器,还不变形), 用的很多
           //BoxFit.fitHeight: 纵向充满
           //BoxFit.fitWidth: 横向充满
//           fit: BoxFit.cover,
           repeat: ImageRepeat.repeatY,
         ),
         width: 300,
         height: 300,
         decoration: BoxDecoration(
           color: Colors.yellow
         ),
       ),
    );
  }

}