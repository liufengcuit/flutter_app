import 'package:flutter/material.dart';
import 'package:myapp/pages/App.dart';
import 'package:myapp/pages/home/search.dart';

final routes = {
  "/": (BuildContext context) => AppHome(),
  //如果需要传参，那么在配置的时候加上{arguments}；如果不需要传参，则不用加{arguments}
  // "/search": (context, {arguments}) => Searchpage(arguments: arguments,),
  "/search": (BuildContext context) => Search()
};


var onGenerateRoute = (RouteSettings settings) {
  //统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if(pageContentBuilder != null) {
    //能寻找到对应的路由
    if(settings.arguments != null) {
      //页面跳转前有传参
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context, arguments: settings.arguments));
      return route;
    }else{
      //页面跳转前没有传参
      final Route route = MaterialPageRoute(builder: (context) => pageContentBuilder(context));

      return route;
    }
  }
  return routes[0];
};