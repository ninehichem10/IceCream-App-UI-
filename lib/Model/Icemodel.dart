import 'package:flutter/material.dart';



class Iceitem {
  final String title;
  final String price;
  final String picture;
  final VoidCallback onTap;

  Iceitem({this.title, this.price, this.picture, this.onTap});
}