// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackDemo2 extends StatefulWidget {
  const StackDemo2({super.key});
  @override
  State<StackDemo2> createState() => _StackDemo2State();
}
class _StackDemo2State extends State<StackDemo2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 80),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30) , bottomRight: Radius.circular(30)),
                color: Colors.white,
              ),
            ),
          ),
          Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30) , bottomRight: Radius.circular(30)),
                color: Colors.indigo,
              ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10 , horizontal: 20),
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.menu , color: Colors.white),
                        Icon(Icons.add_call , color: Colors.white),
                      ],
                    ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30,left: 20),
                    child: Text('all about my screen' ,
                      style: TextStyle(color: Colors.white , fontSize: 20),),
                  ),
                )
              ],
            ),
            ),
        Positioned(
          left: 20,
          top: 150,
            child: SizedBox(
              width: 100,
              height: 150,
              child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
                child: Image.asset('assets/image/green.jpeg' , fit: BoxFit.cover),
              ),
            ),
        
        )


          //Image.asset('assets/image/flower2.jpeg')
        ],
      ),
    );
  }
}
