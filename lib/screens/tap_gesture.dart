import 'package:flutter/material.dart';

class TapGesture extends StatefulWidget {
  const TapGesture({super.key});

  @override
  State<TapGesture> createState() => _TapGestureState();
}

class _TapGestureState extends State<TapGesture> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
            //  Color = Colors.red;
            });
          },
          child: Container(
            height: 80,
            width: 80,
            color: Colors.lightBlue,
            child: Text('click',textAlign: TextAlign.center),
          ),
        ),
      ),
    );
  }
}
