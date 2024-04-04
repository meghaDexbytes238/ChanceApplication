import 'package:flutter/material.dart';

class StackDemo3 extends StatefulWidget {
  const StackDemo3({super.key});

  @override
  State<StackDemo3> createState() => _StackDemo3State();
}

class _StackDemo3State extends State<StackDemo3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(15),
          //alignment: Alignment.center,
          //color: Colors.black87,
          width: 300,
          height: 400,
          // constraints: BoxConstraints.expand(
          //   width: 200,
          //   height: 300,
          //
          // ),
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            boxShadow: [
              BoxShadow(
                  color: Colors.yellow,
                  blurRadius: 5,
                  spreadRadius: 2,
                  blurStyle: BlurStyle.outer)
            ],
            image: DecorationImage(
              image: AssetImage('assets/image/download.png'),
              fit: BoxFit.fill,
            ),
          ),
          child:  Stack(
            children: [
              Positioned(
                  top: 10,
                 // right: 10,
                  child: Text('Good Morning,' , style: TextStyle(color: Colors.yellow),)),
              Positioned.fill(
                  top: 30,
                  //right: 10,
                  child: Text('meditation is very important',style: TextStyle(color: Colors.yellow,backgroundColor: Colors.deepOrangeAccent),)),
              Positioned.fromRect(
                rect: Rect.fromCircle(center: Offset.fromDirection(10.0), radius: 20.0),
                  // bottom: 30,
                  // right: 0,
                  child: Text('medition is Powerfull',
                    style: TextStyle(color: Colors.yellow ,
                        backgroundColor: Colors.blueAccent),)),
              Positioned.directional(
                end: 0,
               // end: 0,
               //  height: 100,
               //  width: 200,
                //bottom: 0,
                bottom: 10,
                  //right: 0,
             //left: 10,
                textDirection: TextDirection.ltr,
                child: Text('we should do meditation',style: TextStyle(color: Colors.yellow , backgroundColor: Colors.pink),)
              ),
              Positioned.fill(
                bottom: 200.0,
                right: 100,
                left: 100,
                top: 100,
                child: Container(
                  // height: 50,
                  // width: 50,
                  color: Colors.deepOrangeAccent,
                  // height: 50,
                  //  width: 50,
                ),
              ),
              Container(
              //padding: EdgeInsets.only(top: 100),
                 margin: EdgeInsets.fromLTRB(10 ,0, 30,60 ),
                  color: Colors.pinkAccent,
                  child: Container(
                   // margin: EdgeInsets.only(left: 10,bottom: 10),
                    color: Colors.yellow,


                ),
              ),
              ElevatedButton(onPressed: (){
    }
              , child: Text('click for next screeen'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
