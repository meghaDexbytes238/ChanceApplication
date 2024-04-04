import 'package:cosmic_demo/Screens/profile_screen.dart';
import 'package:cosmic_demo/Screens/splashscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screens/btns.dart';
import 'Screens/favourite_screen.dart';
import 'Screens/home_screen.dart';
import 'Screens/inner_page.dart';
import 'Screens/loginscreen.dart';
import 'Screens/navigate_screen1.dart';
import 'Screens/tryclass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
       routes: {
    // When navigating to the "/" route, build the FirstScreen widget.

    // When navigating to the "/second" route, build the SecondScreen widget.
    '/first': (context) => const NavigateScreen1(),
         '/thirdToFirst' : (context) => const NavigateScreen1()
    },
      theme: ThemeData.light(useMaterial3: true).copyWith(

        cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
      ),
      home: Splash_Screen(),
    );
  }
}

