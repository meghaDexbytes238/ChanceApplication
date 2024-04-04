// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cosmic_demo/Screens/btns.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

Widget space = SizedBox(
  height: 20,
);

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/image 10 (1).png'),
                fit: BoxFit.fill)),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //  crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 58),
                child: Image.asset('assets/image/Vector (1).png'),
              ),
            ),
            SizedBox(height: 150,),
            Container(
              //height: MediaQuery.of(context).size.height/4.5,
              decoration: BoxDecoration(
                  color: Color(0xFF091522).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(28)),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w800,
                          fontSize: 32,
                          fontFamily: 'Figtree',
                        ),
                      ),
                    ),
                    //space,
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
                    //space,
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
                    // space,
                    Align(
                      alignment: AlignmentDirectional.bottomStart,
                      child: Container(
                        height: 30,
                        child: TextButton(
                            onPressed: () {
                              //CustomButtonsCosmic.button1(onPressed: (){});
                            },
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Color(0xFF11DCE8),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            )),
                      ),
                    ),
                    //space,
                    Container(
                      width: double.infinity,
                      height: 44,
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
                        onPressed: () {},
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
                          // Expanded(
                          //   child: Container(
                          //     height: 1,
                          //     color: Color(0xFF8D8E99),
                          //     // width: 5,
                          //
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    // space,
                    Container(
                      child: Row(
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
                              icon: Image.asset('assets/image/facebook_icon.png',height:44,width: 44,)),
                          IconButton(
                              onPressed: (){

                              },
                              icon: Image.asset('assets/image/googlr_icon.png',height:44,width: 44,))
                        ],
                      ),
                    ),
                    //space,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Dont have an account?',style: TextStyle(color: Color(0xFF8D8E99))),
                        Text('Sign Up',style: TextStyle(color: Color(0xFF11DCE8),
                            fontWeight: FontWeight.w400,fontFamily: 'Figtree',height: 12)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
