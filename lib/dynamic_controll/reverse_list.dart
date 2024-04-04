import 'dart:math';
import 'package:allwidgetpractise/screens/listview_builder_demo.dart';
import 'package:flutter/material.dart';

class ReverseListOfTextFiled extends StatefulWidget {
  const ReverseListOfTextFiled({Key? key}) : super(key: key);

  @override
  State<ReverseListOfTextFiled> createState() => _NewExtraFileForTextState();
}

class _NewExtraFileForTextState extends State<ReverseListOfTextFiled> {
  List<List<TextEditingController>> allControllers = [
    [TextEditingController()]
  ];
  List<Color> colorsMy = [
    Colors.red,
    Colors.lightBlueAccent,
    Colors.lightGreenAccent,
    Colors.purpleAccent,
    Colors.yellow,
    Colors.orangeAccent
  ];
  Random random = Random();
  final ScrollController scrollcontroll = ScrollController();
  Widget generateTextFiled(int index, control) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
      child: TextFormField(
        controller: control,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          suffixIcon: GestureDetector(
              onTap: () {
                print('hiii');
                setState(() {
                  allControllers.removeAt(index);
                });
              },
              child: Icon(Icons.delete)),
          hintText: ' Enter data ${index + 1}',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    scrollcontroll.addListener(() {
      print(scrollcontroll.offset);
      print('position ${scrollcontroll.position.pixels}');
    });
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Reverse'),
      // ),
      floatingActionButton: FloatingActionButton(onPressed: () {
       // scrollcontroll.jumpTo(scrollcontroll.position.maxScrollExtent);
//scrollcontroll.animateTo(height*allControllers.length, duration: Duration(microseconds: 1), curve: Curves.ease);
scrollcontroll.jumpTo(height*allControllers.length);
        setState(() {
          // allControllers.add(TextEditingController());
          allControllers.add([]);
          print('outer controller : ${allControllers}');
        });
      },),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // ListView.builder(
          //   //controller: scrollcontroll,
          //   reverse: true,
          //   physics: NeverScrollableScrollPhysics(),
          //   shrinkWrap: true,
          //   itemCount: allControllers.length,
          //   itemBuilder: (context, index) {
          //     return Padding(
          //       padding: EdgeInsets.all(15),
          //       child: Stack(
          //         children: [
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             crossAxisAlignment: CrossAxisAlignment.center,
          //             children: [
          //               Expanded(
          //                 child: Padding(
          //                   padding: const EdgeInsets.only(
          //                       left: 15, right: 15),
          //                   child: TextField(
          //                     //controller: allControllers[index],
          //                     decoration: InputDecoration(
          //                       border: OutlineInputBorder(
          //                         borderRadius: BorderRadius.circular(20),
          //                       ),
          //                       suffixIcon: GestureDetector(
          //                         onTap: () {
          //                           setState(() {
          //                             allControllers.removeAt(index);
          //                             print(allControllers);
          //                           });
          //                         },
          //                         child: Icon(Icons.delete),
          //                       ),
          //                       hintText: 'Enter data  ${index + 1}',
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //               IconButton(
          //                 onPressed: () {
          //                   setState(() {
          //                     generateCOntroll(index);
          //                     //allControllers[index].add(TextEditingController());
          //                     //  print('inni add b controller : ${allControllers[index]}');
          //                     print(
          //                         'inni add b controller : ${allControllers}');
          //                   });
          //                 },
          //                 icon: Icon(Icons.add),
          //                 iconSize: 35,
          //                 tooltip: 'Add',
          //               ),
          //             ],
          //           ),
          //           Align(
          //             alignment: Alignment.bottomCenter,
          //             child: Padding(
          //               padding: const EdgeInsets.only(top: 58),
          //               child: Container(
          //                 decoration: BoxDecoration(
          //                   color:
          //                   colorsMy[random.nextInt(colorsMy.length)],
          //                   borderRadius: BorderRadius.only(
          //                     bottomLeft: Radius.circular(30),
          //                     bottomRight: Radius.circular(30),
          //                   ),
          //                 ),
          //                 alignment: Alignment.center,
          //                 margin: EdgeInsets.only(right: 62, top: 0),
          //                 width: 350,
          //                 child: ListView.builder(
          //                   itemBuilder: (context, innerIndex) {
          //                     return Padding(
          //                       padding: const EdgeInsets.only(
          //                         top: 10,
          //                         right: 10,
          //                         left: 10,
          //                         bottom: 10,
          //                       ),
          //                       child: TextFormField(
          //                         controller: allControllers[index]
          //                         [innerIndex],
          //                         decoration: InputDecoration(
          //                           fillColor: Colors.white,
          //                           filled: true,
          //                           border: OutlineInputBorder(
          //                             borderRadius:
          //                             BorderRadius.circular(20),
          //                           ),
          //                           suffixIcon: GestureDetector(
          //                             onTap: () {
          //                               setState(() {
          //                                 allControllers[index]
          //                                     .removeAt(innerIndex);
          //                                 print(
          //                                     'inni controller : ${allControllers[index]}');
          //                                 print(
          //                                     'inni controller : ${allControllers}');
          //                               });
          //                             },
          //                             child: Icon(Icons.delete),
          //                           ),
          //                           hintText:
          //                           'Enter data ${innerIndex + 1}',
          //                         ),
          //                       ),
          //                     );
          //                   },
          //                   itemCount: allControllers[index].length,
          //                   physics: NeverScrollableScrollPhysics(),
          //                   shrinkWrap: true,
          //                 ),
          //               ),
          //             ),
          //           )
          //         ],
          //       ),
          //     );
          //   },
          // ),

          Expanded(
          child: ListView(
            controller: scrollcontroll,
            shrinkWrap: true,
            reverse: true,
            children: [



              ListView.builder(
                //controller: scrollcontroll,
                reverse: true,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: allControllers.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(15),
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15),
                                child: TextField(
                                  //controller: allControllers[index],
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    suffixIcon: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          allControllers.removeAt(index);
                                          print(allControllers);
                                        });
                                      },
                                      child: Icon(Icons.delete),
                                    ),
                                    hintText: 'Enter data  ${index + 1}',
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  generateCOntroll(index);
                                  //allControllers[index].add(TextEditingController());
                                  //  print('inni add b controller : ${allControllers[index]}');
                                  print(
                                      'inni add b controller : ${allControllers}');
                                });
                              },
                              icon: Icon(Icons.add),
                              iconSize: 35,
                              tooltip: 'Add',
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 58),
                            child: Container(
                              decoration: BoxDecoration(
                                color:
                                colorsMy[random.nextInt(colorsMy.length)],
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                              ),
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(right: 62, top: 0),
                              width: 350,
                              child: ListView.builder(
                                itemBuilder: (context, innerIndex) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      right: 10,
                                      left: 10,
                                      bottom: 10,
                                    ),
                                    child: TextFormField(
                                      controller: allControllers[index]
                                      [innerIndex],
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(20),
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              allControllers[index]
                                                  .removeAt(innerIndex);
                                              print(
                                                  'inni controller : ${allControllers[index]}');
                                              print(
                                                  'inni controller : ${allControllers}');
                                            });
                                          },
                                          child: Icon(Icons.delete),
                                        ),
                                        hintText:
                                        'Enter data ${innerIndex + 1}',
                                      ),
                                    ),
                                  );
                                },
                                itemCount: allControllers[index].length,
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
              ElevatedButton(
                onPressed: () {

                  setState(() {
                    // allControllers.add(TextEditingController());
                    allControllers.add([]);
                    print('outer controller : ${allControllers}');

                  });
                  scrollcontroll.jumpTo(height*allControllers.length);
                 // scrollcontroll.animateTo(height*2, duration: Duration(milliseconds: 100), curve: Easing.linear);
                 // scrollcontroll.jumpTo(scrollcontroll.position.maxScrollExtent);
                  print('ajhj');
                },
                child: Text('Add More Textfields'),
              ),
            ],
          ),
                      ),
        ],
      ),
    );
  }

  void generateCOntroll(int index) {
    //TextEditingController controler = TextEditingController();
    setState(() {
      //allControllers.add();
      allControllers[index].add(TextEditingController());
    });
  }
}
