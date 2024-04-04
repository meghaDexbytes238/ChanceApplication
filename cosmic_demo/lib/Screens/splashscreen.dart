import 'package:cosmic_demo/Screens/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  void initState() {
    super.initState();
    Future.delayed( Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/image/Background.png',),fit: BoxFit.fill)
        ),
        child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 296,
                  width: 296,
                  decoration: BoxDecoration(image:  DecorationImage(image: AssetImage("assets/image/loader.png"),fit: BoxFit.cover)),
                ),
              ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: SvgPicture.asset('assets/image/flutter_logo.svg',),
              ),
            ),
            ],
          ),
      ),
    );
  }
}
