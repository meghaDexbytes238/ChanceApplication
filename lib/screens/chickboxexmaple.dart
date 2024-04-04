
import 'dart:async';

import 'package:flutter/material.dart';

class CheckBoxExample extends StatefulWidget {
  const CheckBoxExample({super.key});

  @override
  State<CheckBoxExample> createState() => _CheckBoxExampleState();
}
class _CheckBoxExampleState extends State<CheckBoxExample> {
  bool? showvalue = false;
  bool _loading = false;
  //bool? showvalue = false;
  double initialvalue = 0.0;
  @override
  Widget build(BuildContext context) {

    String number = (initialvalue * 5).toString()[0];
    void update(){
      Timer.periodic(Duration(milliseconds: 100), (timer) {
        setState(() {
          initialvalue = initialvalue + 0.05;

        });
      });
    }
    void update2(){
      Future.delayed(Duration(milliseconds: 100),() {
        setState(() {
          initialvalue = initialvalue + 0.5;
        });
      },);
    }
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){

        setState(() {
          update();
          _loading = !_loading;
        });
      }, shape: CircleBorder(),child: Icon(Icons.download)),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
                value: showvalue,
            tristate: true,
                onChanged: (bool? value) {
                  setState(() {
                    print(showvalue);
                    print(value);
                    showvalue = value;

                    print(showvalue);
                  });
                },
            activeColor: Colors.cyan,
              hoverColor: Colors.yellow,
              checkColor: Colors.lightGreenAccent,
             // shape: CircleBorder(),
            //  fillColor: MaterialStatePropertyAll(Colors.black),
             // splashRadius: 50,
              semanticLabel: 'helloo',
              visualDensity: VisualDensity.standard,
              mouseCursor: MouseCursor.uncontrolled,
            //isError: true,
              //side: BorderSide(width: 5,color: Colors.purpleAccent),
            ),
            SizedBox(height: 50,),
            ListTile(

              onTap: () {
                setState(() {
                  print(this.showvalue);
                 this.showvalue = !showvalue!;
                  print(this.showvalue);


                });
              },
              title: Text('YESS'),
              leading: Checkbox(
                value: showvalue,
               // tristate: true,
                onChanged: (bool? value) {
                  setState(() {
                   // print(showvalue);
                   // print(value);
                   showvalue = value;

                  //  print(showvalue);
                  });
                },
                activeColor: Colors.cyan,
                hoverColor: Colors.yellow,
                checkColor: Colors.lightGreenAccent,
               // shape: CircleBorder(),
                //  fillColor: MaterialStatePropertyAll(Colors.black),
                //splashRadius: 50,
                semanticLabel: 'helloo',
                visualDensity: VisualDensity.standard,
                mouseCursor: MouseCursor.uncontrolled,
               // isError: true,
               // side: BorderSide(width: 5,color: Colors.purpleAccent),
              ),
            ),
            Container(
             // child: LinearProgressIndicator(),

              child: _loading ?
                LinearProgressIndicator(
                  value: initialvalue,
                  minHeight: 10,
                  color: Colors.purpleAccent,
                  backgroundColor: Colors.lightBlueAccent,
                )
                : Text('please click the Download button'),
            ),
            SizedBox(height: 10,),
            Text('steps $number to five completed'),
            SizedBox(height: 10,),
            LinearProgressIndicator(
              value: initialvalue,
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              setState(() {
                initialvalue = initialvalue + 0.2;
              });
            }, child: Text('click'))
          ],
        ),

      ),
    );
  }
}
