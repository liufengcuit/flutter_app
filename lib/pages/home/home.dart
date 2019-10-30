import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  _Home createState ()=> new _Home();
}

class _Home extends State {
  Widget build(BuildContext context) {
    return  Container(
      child:RaisedButton(
        child: Text("跳转其他页面"),
        onPressed: () {
          Navigator.pushNamed(context, "/mine");
        },
      )
    );
  }
}