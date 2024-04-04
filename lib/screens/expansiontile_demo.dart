import 'package:allwidgetpractise/screens/customlistviewdynamic.dart';
import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatefulWidget {
  const ExpansionTileDemo({super.key});

  @override
  State<ExpansionTileDemo> createState() => _ExpansionTileDemoState();
}
bool iscollaps = false;
bool iscollapsforthird = false;

final ExpansionTileController expansionControl = ExpansionTileController();
final ExpansionTileController expansionControlSecond = ExpansionTileController();
final ExpansionTileController expansionControlForThirt = ExpansionTileController();


class _ExpansionTileDemoState extends State<ExpansionTileDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: ListView(
  children: [
    ExpansionTile(
      controller: expansionControl,
        title: Text('nature image'),
      subtitle: Text('Nature is my medicine'),
iconColor: Colors.red,
textColor: Colors.pink,
     maintainState: true,
     // childrenPadding: EdgeInsets.all(50),

      children: [
        ListTile(
        title: Text('image'),
        subtitle: Image.asset('assets/image/green.jpeg',fit: BoxFit.fill),
        tileColor: Colors.tealAccent,
      )],
      collapsedBackgroundColor: Colors.lightBlueAccent,
      collapsedIconColor: Colors.yellow,
     collapsedTextColor: Colors.white,tilePadding: EdgeInsets.all(20),
      controlAffinity: ListTileControlAffinity.leading,
     // collapsedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
   //   shape: StadiumBorder(side: BorderSide(width: 2,color: Colors.yellow)),

    ),
    SizedBox(height: 10,),
    //button
    Padding(
      padding: const EdgeInsets.only(left: 150,right: 150),
      child: ElevatedButton(

          onPressed: () {
        if(expansionControl.isExpanded){
          expansionControl.collapse();
        }else {
          expansionControl.expand();
        }
      }, child: Text('click here to expand')
      ),
    ),
    SizedBox(height: 10,),
    ExpansionTile(
      title: Text('nature'),
     // controller: expansionControlSecond,
      subtitle: Text('Beautiful Nature'),
      iconColor: Colors.red,
      textColor: Colors.pink,
      collapsedBackgroundColor: Colors.lightBlueAccent,
      expandedAlignment: Alignment.bottomLeft,
      collapsedIconColor: Colors.yellow,
      collapsedTextColor: Colors.white,tilePadding: EdgeInsets.all(20),
      controlAffinity: ListTileControlAffinity.platform,
      children: [
        Builder(
          
          builder: (context) {
            return Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                  onPressed: () {
                    return ExpansionTileController.of(context).collapse();
                  }, child: Text('click here to Collapse')
              ),
            );
          }
        ),
      ],

      // collapsedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      //   shape: StadiumBorder(side: BorderSide(width: 2,color: Colors.yellow)),

    ),
    SizedBox(height: 10,),
    ExpansionTile(

      title: Text('nature'),
      subtitle: Text('Nature is the ultimate source of our living. Both living and non-living things include nature, and everyone is interdependent, which helps maintain the ecosystem. Plants, animals, and humans all depend on nature for their survival. It supplies oxygen, sunlight, soil, water, and other necessary components.'),
      iconColor: Colors.white,
      textColor: Colors.white,
      collapsedBackgroundColor: Colors.lightBlueAccent,
      expandedAlignment: Alignment.bottomLeft,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
      //collapsedIconColor: Colors.yellow,
     // collapsedTextColor: Colors.white,tilePadding: EdgeInsets.all(20),
      controlAffinity: ListTileControlAffinity.platform,
      backgroundColor: Colors.purpleAccent,
      trailing: Icon(
    iscollaps ? Icons.arrow_drop_down_circle : Icons.arrow_drop_down_outlined

      ),
      onExpansionChanged: (bool value) {
        setState(() {
          iscollaps = value;
        });
        print("onchange is :  $value");

      },
      children: [
        ListTile(
          title: Text('hello in text'),
          subtitle: Image.asset('assets/image/green.jpeg',fit: BoxFit.fill),
         // tileColor: Colors.tealAccent,

        ),],

      // collapsedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      //   shape: StadiumBorder(side: BorderSide(width: 2,color: Colors.yellow)),

    ),
    SizedBox(height: 10,),
    ExpansionTile(
      controller: expansionControlForThirt,
      title: Text('nature image'),
      subtitle: Text('Nature is my medicine'),
      //iconColor: Colors.red,
      textColor: Colors.pink,
      maintainState: true,
      onExpansionChanged: (value) {
        setState(() {
          iscollapsforthird = value;
        });

      },
      trailing: Icon(

          iscollapsforthird  ? Icons.upload_outlined : Icons.download_outlined
        //
      ),
      // childrenPadding: EdgeInsets.all(50),
      children: [
        ListTile(
          title: Text('image'),
          subtitle: Image.asset('assets/image/green.jpeg',fit: BoxFit.fill),
        //  tileColor: Colors.pinkAccent[100],
        )],
      collapsedBackgroundColor: Colors.lightBlueAccent,
      //collapsedIconColor: Colors.yellow,
      collapsedTextColor: Colors.white,tilePadding: EdgeInsets.all(20),
      // trailing: Icon(
      //
      //     expansionControlForThirt.isExpanded ? Icons.expand_more : Icons.account_circle_sharp
      // ),
      //controlAffinity: ListTileControlAffinity.leading,
      // collapsedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      //   shape: StadiumBorder(side: BorderSide(width: 2,color: Colors.yellow)),

    ),
    Padding(
      padding: const EdgeInsets.only(top: 10, left: 150,right: 150),
      child: ElevatedButton(

          onPressed: () {

            if(expansionControlForThirt.isExpanded){
              expansionControlForThirt.collapse();
              setState(() {
                iscollapsforthird =  expansionControlForThirt.isExpanded;
              });

              print('object if : ${expansionControlForThirt.isExpanded}');

            }else {
              expansionControlForThirt.expand();
              setState(() {
                iscollapsforthird =  expansionControlForThirt.isExpanded;
              });
              print('object else: ${expansionControlForThirt.isExpanded}');

            }
          }, child: Text('click here to expand ')
      ),
    ),
  ],
),
    );
  }
}
