// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cosmic_demo/Screens/home_screen.dart';
import 'package:cosmic_demo/Screens/inner_page.dart';
import 'package:flutter/material.dart';

import 'bottomnabigationaabar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

Widget space = SizedBox(
  height: 20,
);
Widget space1 = SizedBox(
  height: 10,
);
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/image/Background.png'),
                  fit: BoxFit.fill
              )
          ),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //  crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 55),
                  child: Image.asset('assets/image/Vector.png'),
                ),
              ),
              SizedBox(height: 100,),
              Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: Color(0xFF091522).withOpacity(0.7),
                    borderRadius: BorderRadius.circular(28)
                ),
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w800,
                          fontSize: 32,
                          fontFamily: 'Figtree',
                        ),
                      ),
                      alignment: Alignment.topLeft,
                    ),
                    space,
                    TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(44),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Color(0xFF8D8E99)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(44),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                    space,
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'password',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(44),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        hintStyle: TextStyle(color: Color(0xFF8D8E99)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(44),
                            borderSide:
                            BorderSide(color: Colors.white, width: 10)),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                    space1,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(

                        //style: ButtonStyle(alignment: Alignment.centerLeft),
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Color(0xFF11DCE8),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          )),
                    ),
                 space1,
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            tileMode: TileMode.clamp,
                            colors: [
                              Color(0xFFE961FF),
                              Color(0xFF72A5F2),
                              Color(0xFF00E5E5),
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            stops: [
                              0.0,
                              0.3,
                              0.4,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(44)),
                      child: TextButton(

                        style: ButtonStyle(alignment: Alignment.topCenter),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigationbarforItems(),));
                        //  Navigator.pushNamed(context, ''),
                          // Navigator.push(context, MaterialPageRoute(builder: (context) {
                          //   return InnerPageScreen();
                          // }, )
                          // );
                        //  MaterialPageRoute()
                        },
                        child: Text(
                          'Sign in',

                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                            fontFamily: 'Figtree',

                          ),
                        ),
                      ),
                    ),
                     space,
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Container(
                              height: 1,
                              color: Color(0xFF8D8E99),
                              // width: 5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: Text('or sign in using',style: TextStyle(color: Color(0xFF8D8E99)),),
                          ),
                          Expanded(
                            child: Container(
                              height: 1,
                              color: Color(0xFF8D8E99),
                              // width: 5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // space,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: (){
                          },
                          icon: Image.asset('assets/image/twiter_icon.png',height:44,width: 44, ),),
                        IconButton(
                            onPressed: (){
                            },
                            icon: Image.asset('assets/image/facebook_icon.png',height:50,width: 50,fit: BoxFit.cover,)),
                        IconButton(
                            onPressed: (){
                            },
                            icon: Image.asset('assets/image/googlr_icon.png',height:50,width: 50,fit: BoxFit.cover))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Dont have an account?',style: TextStyle(color: Color(0xFF8D8E99))),
                        Text('Sign Up',style: TextStyle(color: Color(0xFF11DCE8),
                            fontWeight: FontWeight.w400,fontFamily: 'Figtree')),
                      ],
                    ),
                    space,
        
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
