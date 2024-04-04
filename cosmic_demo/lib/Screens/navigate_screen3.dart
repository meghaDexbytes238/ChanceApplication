import 'package:cosmic_demo/Screens/navigate_screen1.dart';
import 'package:cosmic_demo/Screens/navigate_screen2.dart';
import 'package:cosmic_demo/Screens/navigate_screen4.dart';
import 'package:flutter/material.dart';

class NavigateScreen3 extends StatefulWidget {
  const NavigateScreen3({super.key});

  @override
  State<NavigateScreen3> createState() => _NavigateScreen3State();
}

class _NavigateScreen3State extends State<NavigateScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Third screen',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 22)),
            ElevatedButton(
              onPressed: () {

                Navigator.of(context).popUntil((route) => route.isFirst);
                },
              child: Text('click for 1 screen'),
            ),
          ElevatedButton(
            onPressed: () {
             //    count = 0;
             //    Navigator.popUntil(context, (route) {
             //      return count++ == 2;
             //    });
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NavigateScreen2(),));
           },
            child: Text('click for 2 screen'),
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
    );
  }
}
