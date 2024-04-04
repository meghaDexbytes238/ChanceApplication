//import 'dart:html';

import 'package:allwidgetpractise/screens/splash_screen.dart';
import 'package:allwidgetpractise/screens/gifscreen.dart';
import 'package:allwidgetpractise/screens/gridview_countdemo.dart';
import 'package:allwidgetpractise/screens/gridview_demo.dart';
import 'package:allwidgetpractise/screens/gridview_extent.dart';
import 'package:allwidgetpractise/screens/home_screen.dart';
import 'package:allwidgetpractise/screens/imagescreen.dart';
import 'package:allwidgetpractise/screens/inputchips_demo.dart';
import 'package:allwidgetpractise/screens/listviewrevision.dart';
import 'package:allwidgetpractise/screens/muiltipleChoiceChips.dart';
import 'package:allwidgetpractise/screens/paddingdemo.dart';
import 'package:allwidgetpractise/screens/setimgviewgif.dart';
import 'package:allwidgetpractise/screens/stackdemo3.dart';
import 'package:allwidgetpractise/screens/stackscreen.dart';
import 'package:allwidgetpractise/screens/stackscreen2.dart';
import 'package:allwidgetpractise/TextField/textfield_screen.dart';
import 'package:allwidgetpractise/screens/videoScreen.dart';
import 'package:flutter/material.dart';
import '../screens/drawer_demo.dart';
import '../screens/gridview_Builderdemo.dart';

class CustomRoutes {
  static String videoScreen = "/video_screen";
  static String stackScreen2 = "/stack_screen2";
  static String stackScreen = "/stack_screen";
  static String setImgViewGif = "/setimg_viewgif";
  static String paddingDemo = "/padding_demo";
  static String stackDemo3 = "/stack_demo3";
  static String muiltipleChoiceChips = "/muiltiple_ChoiceChips";
  static String listviewRevision = "/listview_revision";
  static String inputChipsDemo = "/inputchips_demo";
  static String imageScreen = "/image_screen";
  static String homeScreen = "/home_hcreen";
  static String gridviewExtent = "/gridview_extent";
  static String gridviewDemo = "/gridview_demo";
  static String gifScreen = "/gif_screen";
  static String gridviewBuilderDemo = "/gridview_builderdemo";
  static String gridviewCountDemo = "/gridview_countdemo";
  static String textFieldDemo = "/textfield_screen";
  static String DrawerDemos = "/drawer_demo";
  static String splashScreen = "/";
  static Map<String, Widget Function(BuildContext)> routes = {
    CustomRoutes.splashScreen: (context) => SplashScreen(),
    CustomRoutes.gridviewBuilderDemo: (context) => gridview_Builderdemo(),
    CustomRoutes.gridviewCountDemo: (context) => GridView_Countdemo(),
    CustomRoutes.gridviewDemo: (context) => GridViewDemo(),
    CustomRoutes.gridviewExtent: (context) => GridView_ExtentDemo(),
    CustomRoutes.imageScreen: (context) => ImageScreen(),
    CustomRoutes.gifScreen: (context) => Gif_Screen(),
    CustomRoutes.inputChipsDemo: (context) => Chips_InputDemo(),
    CustomRoutes.listviewRevision: (context) => ListviewRevision(),
    CustomRoutes.muiltipleChoiceChips: (context) =>
        MultipleChoiceChipSingleSelect(),
    CustomRoutes.paddingDemo: (context) => PaddingDemo1(),
    CustomRoutes.setImgViewGif: (context) => SetImageVideoScreen(),
    CustomRoutes.stackDemo3: (context) => StackDemo3(),
    CustomRoutes.stackScreen: (context) => StackScreen(),
    CustomRoutes.stackScreen2: (context) => StackDemo2(),
    CustomRoutes.videoScreen: (context) => Video_Screen(),
    CustomRoutes.homeScreen: (context) => Home_Screen(),
    CustomRoutes.textFieldDemo: (context) => TextFieldScreen(),
    CustomRoutes.DrawerDemos: (context) => DrawerDemo(),
  };

  static List<String> routeArray = [
    CustomRoutes.splashScreen,
    CustomRoutes.gridviewBuilderDemo,
    CustomRoutes.gridviewCountDemo,
    CustomRoutes.gridviewDemo,
    CustomRoutes.gridviewExtent,
    CustomRoutes.imageScreen,
    CustomRoutes.gifScreen,
    CustomRoutes.inputChipsDemo,
    CustomRoutes.listviewRevision,
    CustomRoutes.muiltipleChoiceChips,
    CustomRoutes.paddingDemo,
    CustomRoutes.setImgViewGif,
    CustomRoutes.stackDemo3,
    CustomRoutes.stackScreen,
    CustomRoutes.homeScreen,
    CustomRoutes.videoScreen,
    CustomRoutes.textFieldDemo,
    CustomRoutes.DrawerDemos
  ];
}
//inputchips_demo.dart
