import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({super.key});
  @override
  State<StackScreen> createState() => _StackScreenState();
}
class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('stack screen'),),
      body: Container(
        color: Colors.indigo,
        // width: 350,
        // height: 350,
        child: Stack(
          //alignment: Alignment.bottomRight,
         // fit: StackFit.loose,
          clipBehavior: Clip.none,
          children: [
          Container(
              color: Colors.cyan,
              width: 300,
              height: 300,
            ),
              Container(
                color: Colors.red,
                width: 200,
                height: 200,
              ),
           Positioned.fill(
              //end: 0,
             //start: 50,
            //right: 0,
            bottom: 20,
            // textDirection: TextDirection.ltr,
             child: FlutterLogo(textColor: Colors.white,
               style: FlutterLogoStyle.horizontal,)
           ),
          ],
        ),
      ),
    );
  }
}
