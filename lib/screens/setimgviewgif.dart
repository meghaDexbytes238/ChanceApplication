import 'package:allwidgetpractise/screens/gifscreen.dart';
import 'package:allwidgetpractise/screens/imagescreen.dart';
import 'package:allwidgetpractise/screens/videoScreen.dart';
import 'package:flutter/material.dart';
class SetImageVideoScreen extends StatefulWidget {
  const SetImageVideoScreen({super.key});
  @override
  State<SetImageVideoScreen> createState() => _SetImageVideoScreenState();
}
class _SetImageVideoScreenState extends State<SetImageVideoScreen> {
  List<String> btnName = [  'Show GIF' , 'Show image' ,'Show video'];
 // List<String> screensTitile = ['Gif_Screen','Image_Screen','Video_Screen' ];
  List<Widget> screensWidgets = [Gif_Screen(),ImageScreen(),Video_Screen() ];

  List<Color> colors = [Colors.blue, Colors.pinkAccent, Colors.yellow ];
  //List <Color>
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyan,
        alignment: Alignment.center,

        child: ListView.separated(
          padding: EdgeInsets.only(top: 300 , left: 100,right: 100),
        //  padding: EdgeInsets.all(180),
         // itemExtent: 50,
          itemBuilder: (context, index) {
            return ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => screensWidgets[index] ));
                },
                child: Text('${btnName[index]}'),
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(colors[index])),

            );
          },
          itemCount: screensWidgets.length,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 20,
            );
          },
        ),
      )
    );
  }
}
