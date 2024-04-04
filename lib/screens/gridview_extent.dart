import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridView_ExtentDemo extends StatelessWidget {
  const GridView_ExtentDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: GridView.extent(

  maxCrossAxisExtent: 200,
  padding: EdgeInsets.only(left: 10, right: 10 , bottom: 20 , top: 30),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  children: [
    Container(
      color: Colors.pinkAccent,
    ),Container(
      color: Colors.pinkAccent,
    ),Container(
      color: Colors.pinkAccent,
    ),Container(
      color: Colors.pinkAccent,
    ),Container(
      color: Colors.pinkAccent,
    ),Container(
      color: Colors.pinkAccent,
    ),
    Container(
      color: Colors.pinkAccent,
    ),Container(
      color: Colors.pinkAccent,
    ),Container(
      color: Colors.pinkAccent,
    ),Container(
      color: Colors.pinkAccent,
    ),Container(
      color: Colors.pinkAccent,
    ),Container(
      color: Colors.pinkAccent,
    ),
  ],

),

    );
  }
}
