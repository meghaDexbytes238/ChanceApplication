import 'package:cosmic_demo/Screens/navigate_screen2.dart';
import 'package:cosmic_demo/Screens/navigate_screen3.dart';
import 'package:cosmic_demo/Screens/navigate_screen4.dart';
import 'package:flutter/material.dart';

class NavigateScreen1 extends StatefulWidget {
  const NavigateScreen1({super.key});

  @override
  State<NavigateScreen1> createState() => _NavigateScreen1State();
}

class _NavigateScreen1State extends State<NavigateScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.tealAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('First screen',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 22)),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NavigateScreen2(),));
                },
                child: Text('click for 2 screen'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NavigateScreen3(),));
                },
                child: Text('click for 3 screen'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NavigateScreen4(),));
                },
                child: Text('click for 4 screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
