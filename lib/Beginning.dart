import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'MyCart.dart';
import 'MyHomePage.dart';


class Beginning extends StatefulWidget {
  @override
  _BeginningState createState() => _BeginningState();
}

List _pages = [
  Container(child: MyHomePage(),),
  Container(child: Mycart(),),
  Container(child: Icon(Icons.directions_bike)),
  Container(child: Icon(Icons.directions_bike)),
];

class _BeginningState extends State<Beginning> {
  GlobalKey _bottomNavigationKey = GlobalKey();
  int _currentindex = 0;
  Widget _currentpage = new MyHomePage();
  @override
  Widget build(BuildContext context) {

    Widget _pageChoose(int page){
      switch(page){
        case 0:
          return MyHomePage();
          break;
        case 1:
          return Mycart();
          break;
        case 2:
          return Container(child: Icon(Icons.directions_bike));
          break;
        case 3:
          return Container(child: Icon(Icons.directions_bike));
          break;
      }
    }

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: _currentpage,
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: _currentindex,
          height: MediaQuery.of(context).size.height*0.07,
          color: Color.fromRGBO(197, 126, 84, 1),
          backgroundColor: Colors.transparent,
          items: <Widget>[
            Tab(child: Icon(Icons.home, size: 30,color: Colors.white),),
            Tab(child: Icon(Icons.shopping_cart_outlined, size: 30,color: Colors.white,)),
            Tab(child: Icon(Icons.add_call, size: 30,color: Colors.white,)),
            Tab(child: Icon(Icons.account_circle_outlined, size: 30,color: Colors.white,)),
          ],
          onTap: (int index) {
            setState(() {
              _currentpage =_pageChoose(index);
            });
          },
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          letIndexChange: (index) => true,
        ),
      ),
    );
  }
}
