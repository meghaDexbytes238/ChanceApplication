

import 'package:flutter/material.dart';

class PaddingDemo1 extends StatefulWidget {
  const PaddingDemo1({super.key});
  @override
  State<PaddingDemo1> createState() => _PaddingDemo1State();
}

class _PaddingDemo1State extends State<PaddingDemo1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              //  fit: FlexFit.tight,
              //flex: 3,
              flex: 3,
              child: Container(
                color: Colors.blueAccent,
                height: 100,
              ),
            ),
            Expanded(
              //flex: 3,
              //fit: FlexFit.tight,
              child: Container(
                transform: Matrix4.rotationZ(0.1),
                clipBehavior: Clip.none,
                transformAlignment: Alignment.topLeft,
                foregroundDecoration: BoxDecoration(
                    //color: Colors.cyanAccent
                    ),
                // margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                alignment: Alignment.center,
                constraints: BoxConstraints.expand(
                    //height: 50,
                    width: 300),
                // color: Colors.amber,
                //height: 100,
                child: Text('hellooo'),
                decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    border: Border.all(
                        color: Colors.black87, width: 2, strokeAlign: 1.0)),
              ),
            ),
            Container(
              //height: 100,
              child: ElevatedButton(onPressed: () {},
                  child: Text('Elevated'),
              autofocus: true,
                clipBehavior: Clip.antiAlias,
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll( Colors.tealAccent),
                alignment: Alignment.center,overlayColor: MaterialStatePropertyAll(Colors.pink),
                elevation: MaterialStatePropertyAll(10),
                padding: MaterialStatePropertyAll(EdgeInsets.all(5)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10) , ) ),),
                shadowColor: MaterialStatePropertyAll(Colors.yellowAccent ),
                foregroundColor: MaterialStatePropertyAll(Colors.pink),
              ),
              onLongPress: (){
                         },
                // onHover: (value) {
                //   return dispose();
                // },
              ),
            ),
            TextButton.icon(onPressed: () {},
                 label: Text('texticon'),
              icon: Icon(Icons.access_alarm),
        
            ),
            OutlinedButton(onPressed: (){}, child: Text('outlineBtn')),
            IconButton.outlined(onPressed: (){}, icon: Icon(Icons.access_alarm) ,
                color: Colors.lightGreen , iconSize: 30 , hoverColor: Colors.red ,
            tooltip: 'im outlinebtn', highlightColor: Colors.grey,
              splashRadius: 50,
            ),
            // Flexible(
            //   // flex: 1,
            //   child: Container(
            //     color: Colors.blue,
            //     //height: 100,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
