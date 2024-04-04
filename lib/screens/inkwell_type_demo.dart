import 'package:flutter/material.dart';

class InkWellTypeDemo extends StatefulWidget {
  const InkWellTypeDemo({super.key});

  @override
  State<InkWellTypeDemo> createState() => _InkWellTypeDemoState();
}

class _InkWellTypeDemoState extends State<InkWellTypeDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          InkWell(
           //radius: 20,
            borderRadius: BorderRadius.circular(40),
            splashColor: Colors.red.withOpacity(0.3),
        //  highlightColor: Colors.blue.withOpacity(0.3),
          //  hoverColor: Colors.red,
            onTapUp: (details) {
              print('object');
            },
              child: Container(
                padding: EdgeInsets.all(20),
              child: Text('InkWell button')

              )

          ),
          SizedBox(height: 20,),
          Text('flat button'),
          SizedBox(height: 20,),
          InkResponse(
           // customBorder: RoundedRectangleBorder(),
            // containedInkWell: true,
             //radius: 80,
splashColor: Colors.blue.withOpacity(0.3),
hoverColor: Colors.pinkAccent.withOpacity(0.3),

highlightShape: BoxShape.rectangle,
              focusColor: Colors.blue,
borderRadius: BorderRadius.circular(30),
              onTapUp: (details) {
                print('object inkresponse');
              },
              child: Container(
                  padding: EdgeInsets.all(20),
                  child: Text('Inkresponse button')

              )

          ),

        ],
      ),
    );
  }
}
