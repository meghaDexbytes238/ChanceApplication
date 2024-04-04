import 'package:flutter/material.dart';

import 'navigate_screen3.dart';

class NavigateScreen2 extends StatefulWidget {
  const NavigateScreen2({super.key});

  @override
  State<NavigateScreen2> createState() => _NavigateScreen2State();
}

class _NavigateScreen2State extends State<NavigateScreen2> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text('Second screen',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 22)),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NavigateScreen3()),);
              },
              child: Text('click for 3 screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('click for 1 screen'),
            ),
          ],
        ),
      ),
    );
  }
}
