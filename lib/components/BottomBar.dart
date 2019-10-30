import "package:flutter/material.dart";


class BottomBar extends StatefulWidget {
  @override
  _BottomBar createState() => _BottomBar();
}

class _BottomBar extends State<BottomBar> {
  int activeIndex = 0;


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar( // 底部导航
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Image(image: AssetImage( "assets/images/shouye"+ (activeIndex==0? "_active": "")+".png"), width: 20), title: Text('首页')),
        BottomNavigationBarItem(icon: Image.asset("assets/images/order"+ (activeIndex==1? "_active": "")+".png", width: 20), title: Text('订单')),
        BottomNavigationBarItem(icon: Image.asset("assets/images/wode"+ (activeIndex==2? "_active": "")+".png", width: 20), title: Text('我的')),
      ],
      fixedColor: Color.fromARGB(250, 18, 150, 219),
      selectedFontSize: 12,
      currentIndex: activeIndex,
      onTap: jumpTap
    );
  }


  //跳转路由
  void jumpTap(int index) {
    setState(() {
      activeIndex = index;
      // widget.editParenetText(_cont)
    });
  }
}


//  Widget build(BuildContext context) {
//       return BottomNavigationBar( // 底部导航
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
//           BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('Business')),
//           BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('School')),
//         ],
//         fixedColor: Colors.blue,
//       );
//     }



// Scaffold(
//         bottomNavigationBar: BottomNavigationBar(
//           items: <BottomNavigationBarItem>[
//             BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页'))
//           ]
//         )
//       );