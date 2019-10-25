import "package:flutter/material.dart";
import './pages/login/login.dart';
// import 'package:flutter_redux/flutter_redux.dart';
import './components/BottomBar.dart';

void main() => runApp(new MyApp());   //程序入口文件


//StatelessWidget表示一个无状态的组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      //应用名称
      title: '计数器demo',
      theme: new ThemeData(
        //定义主题颜色
        primarySwatch: Colors.green
      ),
      home: new MyHomePage(title: 'Flutter Demo 主页',),
    );
  }
}


//StatefulWidget表示一个有状态的组件
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}): super(key: key);

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
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  //自增
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  //自减
  void _decrementCounter() {
    setState(() {
     _counter--; 
    });
  }

  @override
  Widget build(BuildContext context) {
    //Scaffold 是Material库中的脚手架，包含导航栏、Body、FloatingActionButton，路由默认由Scaffold 创建
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('U have pushed the button this many times:', style: TextStyle(
              fontSize: 24.0,
              fontFamily: "微软雅黑"
            ),),
            new Text('$_counter', style: Theme.of(context).textTheme.display1),
            new FlatButton(
              color: Colors.blue,
              child: new Text('减'),
              onPressed: _decrementCounter,
            ),
            FlatButton(
              child: Text("打开登录页面！", style: TextStyle(fontFamily: "微软雅黑"),),
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Login();
                }));
              },
            )
            
          ],
        )
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
      bottomNavigationBar: new BottomBar()
    );
  }
}