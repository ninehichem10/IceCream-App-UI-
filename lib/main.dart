import 'package:flutter/material.dart';

import 'Beginning.dart';
import 'IceInfo.dart';
import 'MyCart.dart';
import 'MyHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //color: Colors.white,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       backgroundColor: Colors.white
      ),
      home: Beginning(),// IceInfo(), //MyHomePage(),//Mycart(),
    );
  }
}

