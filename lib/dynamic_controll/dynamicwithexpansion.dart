import 'dart:math';

import 'package:flutter/material.dart';

class DynamicWithExpansion extends StatefulWidget {
  const DynamicWithExpansion({super.key});

  @override
  State<DynamicWithExpansion> createState() => _DynamicWithExpansionState();
}
List<TextEditingController> listTextController = [TextEditingController()];
List<TextEditingController> listTextController1 = [TextEditingController()];
String collectValue = '';
int indexForMe = 0;
List<String> valueList = [];

class _DynamicWithExpansionState extends State<DynamicWithExpansion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              itemBuilder: (context, index) {
                return  Padding(
                  padding:  EdgeInsets.all(15),
                  child:   Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(

                            child:  ExpansionTile(
                              title:  TextFormField(
                                controller: listTextController[index],

                                decoration: InputDecoration(

                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  ), hintText: 'Please Enter data ${index + 1}',
                                  suffixIcon: GestureDetector(
                                      onTap: () {
                                        print('hiii');
                                        setState(() {
                                          print(listTextController.length);
                                          listTextController.removeAt(index);
                                          valueList = List.generate(listTextController.length, (index) => listTextController[index].text);
                                          print('remove index : $index');
                                        });
                                      },
                                      child: Icon(Icons.delete)),
                                ),
                              ),


                            ),
                          ),
                          SizedBox(width: 10,),
                          IconButton(
                            onPressed: () {
                              print('object');
                              setState(() {
                                //listTextController1 = List.generate(listTextController1.length, (i) => TextEditingController());
                                listTextController1.add(TextEditingController());
                              });
                            }, icon: Icon(Icons.add) , iconSize: 35 , tooltip: 'Add', ),
                        ],
                      ),
                      /*ListView.builder(
                        itemBuilder: (context, index) {
                          return Expanded(
                            flex: 1,
                            child: TextFormField(
                              controller: listTextController1[index],
                              decoration: InputDecoration(border: OutlineInputBorder()),
                            ),
                          );
                        },
                        itemCount: listTextController1.length,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                      )*/
                    ],
                  ),
                );
              },
              itemCount: listTextController.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => Divider(
                color: Colors.grey[200],
                height: 1,
                thickness: 1,

              ),
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  listTextController1.clear();
                  // listTextController1.dispose();
                  listTextController1.add(TextEditingController());
                  listTextController.add(TextEditingController());
                  // listTextController1.clear();
                  // ListtextController.indexOf(TextEditingController());
                  print(listTextController);
                });
              }
              , child: Text('Add More Textfields'),
            ),
          ],
        ),
      ),
    );
  }
}
