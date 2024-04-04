import 'package:flutter/material.dart';

class CustomListViewDynamic extends StatefulWidget {
  const CustomListViewDynamic({super.key});

  @override
  State<CustomListViewDynamic> createState() => _CustomListViewDynamicState();
}
List<String> myList = ['1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19',"20","21","22",'23',"24","25","26","27","28","29","30","31","32","33"];

class _CustomListViewDynamicState extends State<CustomListViewDynamic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.custom(
        shrinkWrap: true,
          itemExtent: 100,
          clipBehavior: Clip.none,
          semanticChildCount: 20,
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,

          childrenDelegate: SliverChildBuilderDelegate(
childCount: myList.length,
          (context, index) {
       return Container(height: 100,color: Colors.lightGreen,child: Text(" index : ${myList[index]}"),margin: EdgeInsets.all(5),);

          },
          // (context, index) {
          //
          //   return Container(height: 100,color: Colors.lightGreen,child: Text(" index : ${myList[index]}"),margin: EdgeInsets.all(5),);
          // },
          ),


      ),

    );
  }
}
