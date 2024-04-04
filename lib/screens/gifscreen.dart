import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gif_Screen extends StatefulWidget {
  const Gif_Screen({super.key});
  @override
  State<Gif_Screen> createState() => _Gif_ScreenState();
}

class _Gif_ScreenState extends State<Gif_Screen> {
  List images = ['assets/gif/bubble.gif' , 'assets/gif/chaos.gif' ,'assets/gif/cinderella.gif' ,
  'assets/gif/impressed.gif','assets/gif/moon.gif','assets/gif/swag.gif' , 'assets/gif/waterattack.gif'];
  List ImageName = ['Bubble','chaos','cinderella','impressed','moon','swag' , 'waterattack'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('GIF Screen'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return SizedBox(
              height: 200,
              child: Card(
                color: Colors.yellow,
                shape: RoundedRectangleBorder(),
                child: SizedBox(
                  height: 200.0,
                  width: 100.0, // fixed width and height
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text(ImageName[index] , style: TextStyle(fontSize: 20 ,)),

                        Image.asset(images[index] , height: 200,fit: BoxFit.fitHeight,)
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          itemCount: images.length,
        separatorBuilder: (context, index) {
          return SizedBox(height: 10,);
        },
      ),
    );
  }
}
