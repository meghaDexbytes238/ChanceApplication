import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerSecondDemo extends StatefulWidget {
  const DrawerSecondDemo({super.key});

  @override
  State<DrawerSecondDemo> createState() => _DrawerSecondDemoState();
}

class _DrawerSecondDemoState extends State<DrawerSecondDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // drawerEnableOpenDragGesture: false,
      //appBar: AppBar(title: Text('drawer welcome')),
      endDrawer: Drawer(
        width: 80,
        shadowColor: Colors.pinkAccent,
        semanticLabel: 'hellooo',
        child: Column(
          children: [
            SizedBox(height: 15,),
            Text('home'),
            SizedBox(height: 5,),
            Text('Settings')],
        ),
      ),
      body: Center(

          child: Builder(
            builder: (context) {
              return ElevatedButton(
                  child: Text('Open Drawer '),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  }
                      );
            }
          ),
      )


    );
  }
}
