import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text( 'ListView')),
        body: HomeContent(),
      ),
    );
  }
  
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          //在列表的前面加图标
          leading: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1589964218395&di=ae2422668aa7e03ed27f6a31b0afefae&imgtype=0&src=http%3A%2F%2Ft9.baidu.com%2Fit%2Fu%3D583874135%2C70653437%26fm%3D79%26app%3D86%26f%3DJPEG%3Fw%3D3607%26h%3D2408'),
          trailing: Icon(Icons.transform,color: Colors.yellow,size: 30),
          title: Text(
            '华北高温1.....',
            style: TextStyle(
              fontSize: 18
            ),
          ),
          subtitle: Text('中国气象网1'),
        ),
        ListTile(
          title: Text('华北高温.....'),
          subtitle: Text('中国气象网'),
        ),
        ListTile(
          title: Text('华北高温.....'),
          subtitle: Text('中国气象网'),
        ),
      ],
    );
  }
  
}