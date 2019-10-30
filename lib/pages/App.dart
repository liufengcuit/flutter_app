import "package:flutter/material.dart";

import 'package:myapp/pages/mine/mine.dart';
import 'package:myapp/pages/order/order.dart';
import 'package:myapp/pages/home/home.dart';

//StatefulWidget表示一个有状态的组件
class AppHome extends StatefulWidget {
  AppHome({Key key, this.title}): super(key: key);

  final String title;

  /*
   * 由于每次状态改变都要调用build方法，并且状态是保存在State中的，如果build方法在StateFulWidget中，
   * 那么build方法和状态分别在两个类中，那么构建时读取状态将会很不方便！
   * 如果真的将build方法放在StatefulWidget中的话，
   * 由于构建用户界面过程需要依赖State，所以build方法将必须加一个State参数，如下
   *  Widget build(BuildContext context, State state){
   *    //state.counter
   *    ...
   *   }
   * 此时State不再具有私密性，会导致状态的修改不可控
   */
  @override
  _AppHome createState() => new _AppHome();
}

class _AppHome extends State<AppHome> {
  PageController _controller = PageController(
    initialPage: 1,
  );
  int activeIndex = 0;
  final appBarTitles = ['首页', '订单', '我的'];

  @override
  Widget build(BuildContext context) {
    //Scaffold 是Material库中的脚手架，包含导航栏、Body、FloatingActionButton，路由默认由Scaffold 创建
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(appBarTitles[activeIndex]),
      ),
      body: PageView(
        controller: _controller,
        children: <Widget>[
          Home(),
          Mine(),
          Order()
        ]
      ),
      bottomNavigationBar: BottomNavigationBar( // 底部导航
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Image(image: AssetImage( "assets/images/shouye"+ (activeIndex==0? "_active": "")+".png"), width: 20), title: Text('首页')),
          BottomNavigationBarItem(icon: Image.asset("assets/images/order"+ (activeIndex==1? "_active": "")+".png", width: 20), title: Text('订单')),
          BottomNavigationBarItem(icon: Image.asset("assets/images/wode"+ (activeIndex==2? "_active": "")+".png", width: 20), title: Text('我的')),
        ],
        fixedColor: Color.fromARGB(250, 18, 150, 219),
        selectedFontSize: 12,
        currentIndex: activeIndex,
        onTap: jumpTap
      )
    );
  }

  //跳转路由
  void jumpTap(int index) {
    print(_controller.initialPage);
    setState(() {
      activeIndex = index;
    });
  }
}