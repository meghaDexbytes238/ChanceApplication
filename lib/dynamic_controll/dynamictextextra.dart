/*
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DynamicTextExtra extends StatefulWidget {
  const DynamicTextExtra({super.key});

  @override
  State<DynamicTextExtra> createState() => _DynamicTextExtraState();
}

List listText1 = [];
List allControllera = [];
List<TextEditingController> listTextController1 = [TextEditingController()];
List<TextEditingController> listTextController = [TextEditingController()];

List<List<TextEditingController>> controllerNew = [[TextEditingController()]];
List<Color> colorsMy = [Colors.red, Colors.lightBlueAccent , Colors.lightGreenAccent, Colors.purpleAccent
  ,Colors.yellow, Colors.orangeAccent ];
Random random = new Random();
String collectValue = '';
int indexForMe = 0;
int indexFor = 0;
List<String> valueList = [];

class _DynamicTextExtraState extends State<DynamicTextExtra> {
  List<List<TextEditingController>> controllerMyAbhi = [[TextEditingController()]];

  Widget generateTextFiled(int index,control){
    return Padding(
      padding: const EdgeInsets.only(top: 10,right: 10,left: 10,bottom: 10),
      child: TextFormField(
      controller: control,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
          suffixIcon: GestureDetector(
              onTap: () {
                print('hiii');
      setState(() {
        allControllera.removeAt(index);
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
   *//* return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              itemBuilder: (context, index) {
                indexForMe = index;
                return Padding(
                  padding: EdgeInsets.all(15),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Container(
                              height: 60,
                              alignment: Alignment.center,
                              child: TextFormField(

                                controller: listTextController[index],
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  hintText: 'Please Enter data ${index + 1}',
                                  suffixIcon: GestureDetector(
                                      onTap: () {
                                        print('hiii');
                                        setState(() {
                                          print(listTextController.length);
                                          listTextController.removeAt(index);
                                          valueList = List.generate(
                                              listTextController.length,
                                                  (index) =>
                                              listTextController[index]
                                                  .text);
                                          print('remove index : $index');
                                          allControllera.clear();
                                          // listText.clear();
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
                              //  print('object $index');
                              setState(() {
                                //   controllerNew.elementAt(index).add(TextEditingController());
                                generateCOntroll();
                                //listTextController1.add(TextEditingController());
                                // listText.add(DynamicWigdetsTextfield());
                                // valueList = List.generate(listTextController.length, (index) => listTextController[index].text);
//listText.add(DynamicWigdetsTextfield());
                                // listText1 = List.generate(listText.length, (i) => listText[i]);
                                //valueList = List.generate(listTextController1.length, (i) => TextEditingController(i));
                                // listTextController1[indexForMe] = (TextEditingController());

                                // listTextController1[index].dispose();
                                //  listTextController1[index].clear();
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
                                color: colorsMy[Random().nextInt(
                                    colorsMy.length)],
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30))),
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(right: 62, top: 0,),
                            width: 350,
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                // print(index);
                                //   indexFor = index;
                                //  print('index for me : $indexFor');
                                return generateTextFiled(
                                    index, allControllera[index]);
                                //listText[index];
                                TextFormField(
                                  controller: listTextController1[index],
                                  decoration:
                                  InputDecoration(border: OutlineInputBorder()),
                                );
                              },
                              itemCount: allControllera.length,
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
              itemCount: listTextController.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) =>
                  Divider(
                    color: Colors.grey[200],
                    height: 1,
                    thickness: 1,
                  ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // listTextController1.clear();
                  // listTextController1.dispose();
                  // listTextController1.add(TextEditingController());
                  listTextController.add(TextEditingController());
                  //  listText.clear();
                  // listText.add(DynamicWigdetsTextfield());

                  //  listTextController1[indexForMe].clear();
                  //listTextController1.removeAt(indexForMe);
                  // listTextController = listTextController1;
                  // listTextController1.clear();
                  // ListtextController.indexOf(TextEditingController());
                  //listTextController1.
                  print(listTextController);
                });
              },
              child: Text('Add More Textfields'),
            ),
          ],
        ),
      ),

    );*//*

   *//*   return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: controllerMyAbhi.length,
          itemBuilder: (context,intex){
          return Row(mainAxisSize: MainAxisSize.max,

            children: [
              Expanded(child: TextFormField(
                controller: controllerMyAbhi.elementAt(intex).first,)),
              IconButton(
                  onPressed: (){
                    controllerMyAbhi.elementAt(intex).add(TextEditingController());},
                  icon: Icon(CupertinoIcons.asterisk_circle))],);
        },),
      );*//*


  }
  void generateCOntroll(){
    TextEditingController controler = TextEditingController();
    setState(() {
      allControllera.add(controler);
    });
  }

}*/
import 'package:flutter/material.dart';

class NewTextfieldExampleforchatgpt extends StatefulWidget {
  const NewTextfieldExampleforchatgpt({super.key});

  @override
  State<NewTextfieldExampleforchatgpt> createState() => _NewTextfieldExampleforchatgptState();
}

class _NewTextfieldExampleforchatgptState extends State<NewTextfieldExampleforchatgpt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Example'),
      ),
      body: MyWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
      ),
    );
  }
}

class ControllerManager {
  List<List<TextEditingController>> _controllerLists = [[TextEditingController()]];

  // Add a new TextEditingController to the last inner list
  void addController(int listIndex) {

    _controllerLists.last.add(TextEditingController());
    print('sfjh : $_controllerLists');
  }
  void addControllerList() {
    _controllerLists.add([TextEditingController()]);
    print('outer : $_controllerLists');

  }
// Get the TextEditingController at the specified indices
  TextEditingController getController(int listIndex, int controllerIndex) {
    return _controllerLists[listIndex][controllerIndex];
  }

  // Get the number of inner lists
  int get listCount => _controllerLists.length;

  // Get the number of controllers in a specific inner list
  int controllersInList(int listIndex) {
    return _controllerLists[listIndex].length;
  }
}

/*

class MyWidget extends StatefulWidget {
  @override
  MyWidgetState createState() => MyWidgetState();
}

class MyWidgetState extends State<MyWidget> {
  ControllerManager _controllerManager = ControllerManager();

  @override
  Widget build(BuildContext context) {
    ListView.builder(
        itemBuilder: (context, index) {

        },
      itemCount: ,
    ),
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _controllerManager.addController();
                });
              },
              child: Text('Add TextField'),
            ),
          ],
        ),
        SizedBox(height: 20),
        Expanded(
          child: ListView.builder(
            itemCount: _controllerManager.listCount,
            itemBuilder: (context, listIndex) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  _controllerManager.controllersInList(listIndex),
                      (controllerIndex) => TextField(
                    controller: _controllerManager.getController(listIndex, controllerIndex),
                    decoration: InputDecoration(hintText: 'Enter text'),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
*/
// this is so so correct
/*
class MyWidget extends StatefulWidget {
  @override
  MyWidgetState createState() => MyWidgetState();
}

class MyWidgetState extends State<MyWidget> {
  ControllerManager _controllerManager = ControllerManager();

  TextEditingController _outerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
     // crossAxisAlignment: CrossAxisAlignment.stretch,
     children: [
     //    Row(
     //      children: [
     //        // Expanded(
     //        //   child: TextFormField(
     //        //     controller: _outerController,
     //        //     decoration: InputDecoration(border: OutlineInputBorder()),
     //        //   ),
     //        // ),
     //        ElevatedButton(
     //          onPressed: () {
     //            setState(() {
     //              _controllerManager.addController();
     //            });
     //          },
     //          child: Text('Add Column'),
     //        ),
     //
     //      ],
     //    ),
      //  SizedBox(height: 20),
        Expanded(
          child: ListView.builder(
            itemCount: _controllerManager.listCount,
            itemBuilder: (context, listIndex) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15),
                          child: TextField(
                            controller: _controllerManager.getController(listIndex, 0),
                            decoration: InputDecoration(hintText: 'Enter outer text',border: OutlineInputBorder()),
                          ),
                        ),
                      ),
              IconButton(
                  onPressed:  () {
              setState(() {
              _controllerManager.addController();
              });
              }, icon: Icon(Icons.add),
              ),

                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      _controllerManager.controllersInList(listIndex) - 1,
                          (controllerIndex) => TextField(
                        controller: _controllerManager.getController(listIndex, controllerIndex + 1),
                        decoration: InputDecoration(hintText: 'Enter inner text' ,border: OutlineInputBorder()),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Align(
            alignment: Alignment.bottomCenter,

            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _controllerManager.addControllerList();
                });
              },
              child: Text('Add TextField'),
            ),
          ),
        ),
      ],
    );
  }
}

*/
// try again
class MyWidget extends StatefulWidget {
  @override
  MyWidgetState createState() => MyWidgetState();
}
class MyWidgetState extends State<MyWidget> {
  ControllerManager _controllerManager = ControllerManager();
  TextEditingController _outerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: _controllerManager.listCount,
            itemBuilder: (context, listIndex) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15),
                          child: TextField(
                            controller: _controllerManager.getController(listIndex, 0),
                            decoration: InputDecoration(hintText: 'Enter outer text',border: OutlineInputBorder()),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _controllerManager.addController(listIndex); // Add controller for the inner text field in the same list as the outer text field
                          });
                        },
                        icon: Icon(Icons.add),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: _controllerManager.controllersInList(listIndex) - 1,
                    itemBuilder: (context, innerIndex) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextField(
                          controller: _controllerManager.getController(listIndex, innerIndex + 1),
                          decoration: InputDecoration(hintText: 'Enter inner text', border: OutlineInputBorder()),
                        ),
                      );
                    },
                  ),
                ],
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _controllerManager.addControllerList();
                });
              },
              child: Text('Add TextField'),
            ),
          ),
        ),
      ],
    );
  }
}
