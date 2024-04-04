import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewBuilderDemo extends StatefulWidget {
  const ListViewBuilderDemo({super.key});

  @override
  State<ListViewBuilderDemo> createState() => _ListViewBuilderDemoState();
}
final myKey =  GlobalKey();
List<String> myList = ['1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19',"20","21","22"];
ScrollController conrollScroll = ScrollController();
class _ListViewBuilderDemoState extends State<ListViewBuilderDemo> {
  @override


  Widget build(BuildContext context) {
   double height = MediaQuery.of(context).size.height;
    conrollScroll.addListener(() {
      print(conrollScroll.offset);
      print('position ${conrollScroll.position.pixels}');
    });
   // conrollScroll.jumpTo(value)
    return Scaffold(
      body: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              height: height/10,
              //height: 100,
                width: 200,
              margin: EdgeInsets.all(5),
               // padding: EdgeInsets.all(50),
                //decoration: BoxDecoration(color: Colors.white54),
                color: Colors.lightBlueAccent,
                child: Text(
                  myList[index],
                  style: TextStyle(fontSize: 22,),
                  textAlign: TextAlign.center,
                ),

            );

          },
        itemCount: myList.length,
        controller: conrollScroll,
        //physics: NeverScrollableScrollPhysics(),
        //clipBehavior: Clip.antiAlias,
        //shrinkWrap: true,
       // padding: EdgeInsets.all(20),
        //physics: FixedExtentScrollPhysics() ,
        //shrinkWrap: false,


      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FloatingActionButton(

            onPressed: (){
             // conrollScroll.animateTo( 20 *  height,   duration: Duration(milliseconds: 600), curve: Curves.bounceIn);
              // conrollScroll.animateTo(conrollScroll.offset-150,
              //     duration: Duration(milliseconds: 500), curve: Curves.linear);
            // conrollScroll.animateTo(conrollScroll.position.maxScrollExtent,
            //     duration: Duration(seconds: 1), curve: Curves.linear);
            conrollScroll.jumpTo(conrollScroll.position.maxScrollExtent);

          },
      shape: const CircleBorder(),child: const Icon(Icons.arrow_downward),

    ),
          

          FloatingActionButton(onPressed: (){
            //jump specific position

            //conrollScroll.animateTo(  1 * height,   duration: const Duration(milliseconds: 500), curve: Curves.linear);

            // conrollScroll.animateTo(conrollScroll.offset+150,
            //     duration: Duration(seconds: 1), curve: Easing.linear);

            // conrollScroll.animateTo(conrollScroll.position.minScrollExtent,
            //     duration: Duration(milliseconds: 1), curve: Easing.linear);

             conrollScroll.jumpTo(conrollScroll.position.minScrollExtent);
          },
            shape: const CircleBorder(),
            child: const Icon(Icons.arrow_upward) ,

         )
        ],
      ),
    );
  }
}
