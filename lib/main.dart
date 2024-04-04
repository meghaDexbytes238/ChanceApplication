
//import 'package:allwidgetpractise/screens/textfield_screen.dart';
import 'package:allwidgetpractise/Game/extraclass.dart';
import 'package:allwidgetpractise/Game/main_screen_start_game.dart';
import 'package:allwidgetpractise/dynamic_controll/dynamictextextra.dart';
import 'package:allwidgetpractise/dynamic_controll/dynamictextfielddemo2.dart';
import 'package:allwidgetpractise/dynamic_controll/dynamicwithexpansion.dart';
import 'package:allwidgetpractise/dynamic_controll/newextrafileforme.dart';
import 'package:allwidgetpractise/dynamic_controll/reverse_list.dart';
import 'package:allwidgetpractise/screens/chickboxexmaple.dart';
import 'package:allwidgetpractise/screens/expansiontile_demo.dart';
import 'package:allwidgetpractise/screens/gridview_Builderdemo.dart';
import 'package:allwidgetpractise/screens/listview_builder_demo.dart';
import 'package:allwidgetpractise/screens/listviewbuilderinscrollindex.dart';
import 'package:flutter/material.dart';
import 'Game/first_screen_game.dart';
import 'TextField/textformfieldasirtask.dart';
import 'dynamic_controll/dynamic_controll_list.dart';

void main() {
  runApp(
   const MyApp()
  );
  print('megha');

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: AppStrings.applicationName,
    //   initialRoute: CustomRoutes.splashScreen,
    //   routes: CustomRoutes.routes,
    //   theme: CustomThemes.appTheme,
    // );
     return const MaterialApp(
         debugShowCheckedModeBanner: false,
        // home:  DynamicWithExpansion()
  //home: DynamicTextExtra(),
    //home:   NewTextfieldExampleforchatgpt(),
    //   home: NewExtraFileForText(),
   //  home: ReverseListOfTextFiled(),
      // home: ListViewBuilderIndex(),
       //home:  MyAppExtraClass(),
       home:  FirstScreenGame(),
     );
  }
}


