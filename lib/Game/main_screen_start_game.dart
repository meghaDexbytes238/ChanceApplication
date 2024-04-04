import 'dart:math';
import 'package:allwidgetpractise/Game/first_screen_game.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen_StartGame extends StatefulWidget {
  int boxCount;
  //final bool first;
  HomeScreen_StartGame({super.key, required this.boxCount});

  @override
  State<HomeScreen_StartGame> createState() => _HomeScreen_StartGameState();
}

class _HomeScreen_StartGameState extends State<HomeScreen_StartGame> {
  List<Color> colorsMy = [
    Colors.red,
    Colors.lightBlueAccent,
    Colors.lightGreenAccent,
    Colors.purpleAccent,
    Colors.yellow,
    Colors.blue.shade900
  ];
  List<double> opecityForColor = [
    0.0,
    0.1,
    0.2,
    0.3,
    0.4,
    0.5,
    0.6,
    0.7,
    0.8,
    0.9,
    1.0
  ];
  Random random = Random();
  var element = 1.0;
  bool myindex = false;
  var selectedCard = -1;
  var selectBorder = 0;
  int selectedIndex = 0;
  var elevetionVar;
  late Color color;
  var borderWidth = 5.0;
  int getindex = 0;
  var howTime;
  int count = 0;
bool buttonis = true;
var newIndex;
 List newList = [];
 var mysequenceindex = 0;
var checkInListIndex = 0;
  var bolvalue = 1;
var elementOfCheck =1;
 var ForBorder = true;
  @override
  void initState() {
    super.initState();
    newList = List<int>.generate(
      widget.boxCount,
          (index) {
        if ((index)< 1) {

          return (index ) + 1;
        } else if (widget.boxCount / 2 == (index ) || (index ) < widget.boxCount / 2) {

          return (index) * 2;
        } else if ((index) == widget.boxCount - 1 || widget.boxCount > (index )) {

          if (widget.boxCount / 2 == ((index) - 1)) {
            return widget.boxCount - 1;
          }
          return ((widget.boxCount  - (index )) * 2 ) + 1;
        }
        return widget.boxCount - 1;
      },
    );
    howTime = widget.boxCount ~/ 2;
    howTime = howTime *10;
   getindexMethod(0);
   print(newList);

  }
  int getindexMethod(int index){
    index == newList.indexOf(elementOfCheck);
    return index;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 50, right: 50, top: 10),
        margin: EdgeInsets.all(20),
        child: GridView.builder(
          itemBuilder: (context, index) {
            return Opacity(
              opacity: selectedCard == index ? element : 1.0,
              child: ElevatedButton(
                autofocus: true,
                style: ButtonStyle(
                  side: MaterialStatePropertyAll(
                      BorderSide(
                          width: ((index == newList.indexOf(elementOfCheck) && (newList[index] ==  elementOfCheck)))? borderWidth : 0.0,
                          color: Colors.blueAccent,
                          strokeAlign: 3,
                          style: BorderStyle.solid)),
                  backgroundColor: MaterialStatePropertyAll(
                    colorsMy[random.nextInt(colorsMy.length)],
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                  ),
                  shadowColor: selectedCard == index ? MaterialStatePropertyAll(color) : MaterialStatePropertyAll(Colors.transparent),
                  elevation: selectedCard == index ? MaterialStatePropertyAll(elevetionVar) : MaterialStatePropertyAll(0.0),
                ),
                onPressed: ( buttonis == true) ? () {
                  setState(() {
                    //print(index);
                    selectedCard = index;
                    element = opecityForColor[random.nextInt(opecityForColor.length)];
                    elevetionVar = 30.0;
                    color = Colors.green;
                    print("index ${index}");
                    print("elementcehck $elementOfCheck");
                    print("index of new  ${newList.indexOf(elementOfCheck)}");

                    if((index == newList.indexOf(elementOfCheck) )){
                      // && (newList[index] ==  elementOfCheck
                      //|| count <= howTime
                      print('true');
                      ForBorder = true;
                      borderWidth = 5.0;
                      index = index + 1;
                      elementOfCheck = elementOfCheck + 1;
                      print(' eleme $elementOfCheck');
                      print("index of new  ${newList.indexOf(elementOfCheck)}");
                      print("index ${index}");
                      print(newList[index]);
                      // if(elementOfCheck > newList.length ){
                      //   index = 0;
                      //   elementOfCheck = 1;
                      // }
                      // count = count + 1;
                    }
                   // print("index ${index}");
                  /*  if((index == newList.indexOf(elementOfCheck) && (newList[index] ==  elementOfCheck)) ){
                      //|| count <= howTime
                      print('true');
                      ForBorder = true;
                      borderWidth = 5.0;
                      index = index + 1;
                      elementOfCheck = elementOfCheck + 1;
                      print(' eleme $elementOfCheck');
                      print("index of new  ${newList.indexOf(elementOfCheck)}");
                      print("index ${index}");
                      print(newList[index]);
                      // if(elementOfCheck > newList.length ){
                      //   index = 0;
                      //   elementOfCheck = 1;
                      // }
                     // count = count + 1;
                  }*/
                    /*if(count == howTime){
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(

                          title: Text("the game is over"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => FirstScreenGame(),
                                      ));
                                },
                                child: Text('Restart')),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Cancel'),
                              style: ButtonStyle(
                                  foregroundColor:
                                  MaterialStatePropertyAll(Colors.red)),
                            ),
                          ],
                        ),
                      );
                    }*/
                  });
                  if (element == 0) {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        contentPadding: EdgeInsets.zero,
                        insetPadding: EdgeInsets.zero,
                        actionsPadding: EdgeInsets.all(0),
                        titlePadding: EdgeInsets.zero,
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Lottie.network('https://lottie.host/00ebae14-bf30-45f1-97de-1e65098e6d38/FegyoBqSaH.json',
                              alignment: Alignment(0, 100),
                              height: MediaQuery.of(context).size.height/2.5
                            ),
                            Text("Congratulations",textAlign: TextAlign.center,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800)),
                           SizedBox(height: 10,),
                            Text('You are won!!',style: TextStyle(fontSize: 12),),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => FirstScreenGame(),
                                      ));
                                },
                                child: Text('Restart')),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Cancel'),
                              style: ButtonStyle(
                                  foregroundColor:
                                  MaterialStatePropertyAll(Colors.red)),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                } : null,
                child: Text('${newList[index]}'),
              ),
            );
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 30, mainAxisSpacing: 30),
          itemCount: newList.length,
        ),
      ),
    );
  //////////


  }
}
