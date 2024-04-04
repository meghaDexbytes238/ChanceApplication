import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class gridview_Builderdemo extends StatelessWidget {
  const gridview_Builderdemo({super.key});
   @override
  Widget build(BuildContext context) {
     List arr = [ 'a' , 'b' , 'c' , 'd' , 'e' , 'f' , 'g' , 'h' , 'i' , 'j' , 'k' , 'l' , 'm' , 'n'];

     return Scaffold(
      appBar: AppBar(title: Text('GridView Builder Demo')),
      body: GridView.builder(
shrinkWrap: true,
        primary: false,
          dragStartBehavior: DragStartBehavior.start,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            //maxCrossAxisExtent: 100,
           // mainAxisExtent: 10,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
           // mainAxisExtent: 100,
             // childAspectRatio: 5,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                color: Colors.tealAccent,

              ),
              child: Center(child:Text('$index')),
            );
          },
        itemCount:50,

      )
    );
  }
}
