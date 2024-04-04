import 'package:allwidgetpractise/screens/gridview_Builderdemo.dart';
import 'package:allwidgetpractise/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InkWellDemo extends StatefulWidget {
  const InkWellDemo({super.key});

  @override
  State<InkWellDemo> createState() => _InkWellDemoState();
}

class _InkWellDemoState extends State<InkWellDemo> {
  @override
  String inkwell='click';

  Color clr = Colors.pinkAccent;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          InkWell(
            // onTap: () {
            //   setState(() {
            //     clr = Colors.yellow;
            //     inkwell='Inkwell Tapped';
            //     print('me');
            //   });
            // },
            onLongPress: (){

              return setState(() {
                clr = Colors.blueAccent;
                 inkwell='Inkwell long press';
              });
            },
            onTapDown: (details) {
              return setState(() {
                clr = Colors.red;
                inkwell='Inkwell tapdown press';
              });
            },
            onTapUp: (details) {
              return setState(() {
                clr = Colors.yellow;
                inkwell='Inkwell topup ';
                print('topup');
              });
            },
            onTapCancel: () {
              return setState(() {
                clr = Colors.orangeAccent;
                inkwell='Inkwell tapcancel press';
              });
            },
            onSecondaryTap: () {
              return setState(() {
                clr = Colors.deepPurple;
                inkwell='secondary tab press';
                print('secondary tab');
              });
            },
            onDoubleTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => gridview_Builderdemo(),));
            },
            enableFeedback: true,
            excludeFromSemantics: true,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            radius: 40,
            //splashColor: Colors.black.withOpacity(0.3),
            //highlightColor: Colors.blue.withOpacity(0.3),
//focusColor: Colors.cyan,
//hoverColor: Colors.yellow,
            customBorder: StadiumBorder(),
            //hoverDuration: Duration(seconds: 5),
            child: Center(
              child: Container(
                height: 100,
                width: 100,
                color: clr,

                  child: Text(
                    inkwell,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
              ),
            ),
          ),
          SizedBox(height: 50,),
          GestureDetector(
            onPanDown: (details) {
             Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Home_Screen()
             ),);
            },
            child: Container(
              width: 80,
              height: 80,
              color: Colors.amber,
            ),
          ),
          InkWell(
            onTap: () {
              print('inkwell');
            },
            child: Ink.image(
              width: 200,
              height: 200,
             // color: Colors.blue,
              image: AssetImage('assets/image/green.jpeg'),fit: BoxFit.cover,
              // child: Container(
              //   decoration: BoxDecoration(
              //     image: DecorationImage(image: AssetImage('assets/image/green.jpeg'),fit: BoxFit.cover)
              //   ),
              // ),
            ),
          ),
          SizedBox(height: 50,),
          GestureDetector(
          onTap: () {
              print('gesture');
            },
            onPanDown: (details) {
              print('onpandown');
            },
            onPanStart: (details) {
              print('onpan start');
            },
            onForcePressStart: (details) {
              print('on force press start');
            },
            child: Ink.image(
padding: EdgeInsets.all(100),
             width: 50,
             height: 50,
             //color: Colors.pinkAccent,
             image: AssetImage('assets/image/flower2.jpeg'),
              child: Text('gesture',style: TextStyle(backgroundColor: Colors.pinkAccent),),
            ),
          ),

        ],
      ),
    );
  }
}
