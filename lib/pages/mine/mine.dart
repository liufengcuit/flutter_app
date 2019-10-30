import 'package:flutter/material.dart';

class Mine extends StatefulWidget {
  @override
  _Mine createState() => new _Mine();
}

class _Mine extends State {
  int _counter = 0;

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        new FlatButton(
          color: Colors.blue,
          child: new Text('加'),
          onPressed: _incrementCounter,
        ),
        FlatButton(
          child: Text("打开登录页面！", style: TextStyle(fontFamily: "微软雅黑"),),
          textColor: Colors.white,
          color: Colors.blue,
          onPressed: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context){
            //   return Login();
            // }));
            
          },
        )
      ]
    );
  }

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


}