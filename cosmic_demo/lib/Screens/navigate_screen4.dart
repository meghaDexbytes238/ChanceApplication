import 'package:cosmic_demo/Screens/navigate_screen2.dart';
import 'package:flutter/material.dart';

class NavigateScreen4 extends StatefulWidget {
  const NavigateScreen4({super.key});

  @override
  State<NavigateScreen4> createState() => _NavigateScreen4State();
}

class _NavigateScreen4State extends State<NavigateScreen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
    child:  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          Text('Fouth screen',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 22)),
          ElevatedButton(
            onPressed: () {  },
            child: Text('click for 3 screen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NavigateScreen2(),));
            },
            child: Text('click for 2 screen'),

          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/first');
             // Navigator.popUntil(context,ModalRoute.withName('/navigate_screen1') );
            },
            child: Text('click for 1 screen'),
          ),
        ],
      ),)
    );
  }
}
