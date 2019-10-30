import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  _Order createState ()=> new _Order();
}


class _Order extends State {
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("这里是订单页面")
      ]
    );
  }
}