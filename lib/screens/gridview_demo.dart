import 'package:allwidgetpractise/config/app_strings.dart';
import 'package:allwidgetpractise/config/custom_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView Demo')),
      body: GridView.builder(

scrollDirection: Axis.vertical,

        physics: AlwaysScrollableScrollPhysics(),
        addAutomaticKeepAlives: false,
clipBehavior: Clip.hardEdge,
        dragStartBehavior: DragStartBehavior.down,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        shrinkWrap: true,
        cacheExtent: 20,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
            maxCrossAxisExtent: 200,
        ),
        itemBuilder: (BuildContext context, int index) {
  return InkWell(
    onTap: () =>
      Navigator.pushReplacementNamed(context, AppStrings.getRandomValue(list: CustomRoutes.routeArray)),

    child: Container(
      color: AppStrings.getRandomValue(list: AppStrings.color),
    ),
  );
        },
        itemCount: 30,
        // children: [
        //   InkWell(
        //     onTap: (){
        //       print('object');
        //       //var randomItem = (CustomRoutes.routeArray..shuffle()).first;
        //       print(AppStrings.getRandomValue(list: CustomRoutes.routeArray));
        //     },
        //     child: Container(
        //       decoration: BoxDecoration(
        //           color: Colors.orange,
        //
        //       ),
        //     ),
        //   ),
        //
        //   Container(
        //     color: Colors.orange,
        //   ),
        //   Container(
        //     color: Colors.red,
        //   ),Container(
        //     color: Colors.orange,
        //   ),
        //   Container(
        //     color: Colors.green,
        //   ),
        //   Container(
        //     color: Colors.orange,
        //   ),
        //   Container(
        //     color: Colors.purple,
        //   ),
        //   Container(
        //   color: Colors.orange,
        //   ),
        //   Container(
        //     color: Colors.teal,
        //   ),
        //   Container(
        //     color: Colors.orange,
        //   ),
        //   Container(
        //     color: Colors.orange,
        //   ),
        //   Container(
        //     color: Colors.orange,
        //   ),
        //   Container(
        //     color: Colors.orange,
        //   ),
        //   Container(
        //     color: Colors.orange,
        //   ),
        //   Container(
        //     color: Colors.orange,
        //   ),Container(
        //     color: Colors.orange,
        //   ),
        //   Container(
        //     color: Colors.orange,
        //   ),
        //   Container(
        //     color: Colors.orange,
        //   ),
        //   Container(
        //     color: Colors.orange,
        //   ),
        // ],
      ),
    );
  }
}
//              print(AppStrings.getRandomValue(list: CustomRoutes.routeArray));