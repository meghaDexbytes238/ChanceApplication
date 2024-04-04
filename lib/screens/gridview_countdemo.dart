import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridView_Countdemo extends StatelessWidget {
  const GridView_Countdemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView count Demo')),
      body: GridView.count(
        //scrollDirection: ,
        crossAxisCount: 3,
      padding: EdgeInsets.all(20),
      crossAxisSpacing: 5,
      //childAspectRatio: 1.0,
      mainAxisSpacing: 5,
      children: [
        Container(
          color: Colors.teal,
        ), Container(
          color: Colors.teal,
        ), Container(
          color: Colors.teal,
        ), Container(
          color: Colors.teal,
        ), Container(
          color: Colors.teal,
        ), Container(
          color: Colors.teal,
        ), Container(
          color: Colors.teal,
        ), Container(
          color: Colors.teal,
        ), Container(
          color: Colors.teal,
        ), Container(
          color: Colors.teal,
        ), Container(
          color: Colors.teal,
        ), Container(
          color: Colors.teal,
        ), Container(
          color: Colors.teal,
        ), Container(
          color: Colors.teal,
        ), Container(
          color: Colors.teal,
        ), Container(
          color: Colors.teal,
        ), Container(
          color: Colors.teal,
        ),
      ],)
    );
  }
}
