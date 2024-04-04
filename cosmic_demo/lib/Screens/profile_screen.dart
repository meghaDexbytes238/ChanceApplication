import 'dart:async';

import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}
bool light = false;
class _ProfileScreenState extends State<ProfileScreen> {
  // if (states.contains(MaterialState.selected)) {
  // return Colors.amber.withOpacity(0.54);
  // }
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image/Background.png'),fit: BoxFit.fill
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leadingWidth: 70,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              //width: 40,
              //height: 40,
              //padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  color: Color(0xFF091522).withOpacity(0.5),
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black,width: 1),
                ),
                 child:Image.asset('assets/image/lefterrowWhite.png',)
              // Icon(Icons.,color: Colors.white,)
            ),
          ),
          title: Text('My Profile'),
          toolbarHeight: 80,
          centerTitle: true,
          titleTextStyle: TextStyle(fontWeight: FontWeight.w800,
            fontSize: 24,color: Colors.white,fontFamily: 'Figtree',
          ),
         
          backgroundColor: Color(0xFF091522).withOpacity(0.5),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), bottomLeft: Radius.circular(28)),
              side: BorderSide(color: Colors.black,width: 1,strokeAlign: 0.2)
          ),

        ),
        body: Column(
          children: [
            Container(

              padding: EdgeInsets.only(right: 20,top: 20,bottom: 20,left: 10),
              margin: EdgeInsets.only(right: 25,top: 25,left: 25),

              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                color: Color(0xFF091522).withOpacity(0.5),
                borderRadius: BorderRadius.all(Radius.circular(28)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF091522).withOpacity(0.5),
                    spreadRadius: 8,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  )
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                       //   color: Colors.cyanAccent,
                        image: DecorationImage(
                          image: AssetImage('assets/image/profilePic.png'),fit: BoxFit.cover
                        )
                      ),
                      //child: Image.asset('assets/image/profilePic.png',fit: BoxFit.fitWidth)
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 6,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Arthur Dent',style: TextStyle(color: Colors.white,fontFamily: 'Figtree',
                              fontSize: 16,fontWeight: FontWeight.w800 ,
                              leadingDistribution: TextLeadingDistribution.proportional,), ),
                            Image.asset('assets/image/bar_icon_edit.png',color: Colors.white,)
                          ],
                        ),
                        SizedBox(height: 3,),
                        Text('Space adventurer' ,style: TextStyle(color: Colors.white,fontFamily: 'Figtree',fontSize: 12,fontWeight: FontWeight.w400 ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: 327,height: 250,
              margin: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Color(0xFF091522).withOpacity(0.5),
                borderRadius: BorderRadius.all(Radius.circular(28)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF091522).withOpacity(0.5),
                    spreadRadius: 8,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  )
                ],
              ),
              child: Switch.adaptive(
                value: light,
                applyCupertinoTheme: false,
                activeTrackColor: Color(0xFF11DCE8),
                activeColor: Colors.cyan,
                onChanged: (bool value) {
                  // Timer(Duration( seconds: 5),(){
                  //     return setState(() {
                  //       light = value;
                  //     });
                  // });


                  Future.delayed(Duration(milliseconds: 500),(){
                    return setState(() {
                      light = value;
                    });
                  });

                },

              )
            )
          ],
        ),
      ),
    );
  }
}
