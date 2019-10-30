import "package:flutter/material.dart";
import 'package:myapp/routes/index.dart';
import 'package:myapp/pages/App.dart';

void main() {
  runApp(new MyApp());
}  //程序入口文件


//StatelessWidget表示一个无状态的组件
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      initialRoute: '/',
      routes: routes,
      // home: AppHome()
    );
  }
}