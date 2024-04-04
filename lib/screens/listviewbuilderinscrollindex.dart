import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewBuilderIndex extends StatefulWidget {
  const ListViewBuilderIndex({super.key});

  @override
  State<ListViewBuilderIndex> createState() => _ListViewBuilderIndexState();
}
int getIndex = 0;

var getValue ;
class _ListViewBuilderIndexState extends State<ListViewBuilderIndex> {
  final ScrollController scrollcontroll = ScrollController();
  TextEditingController textControl = TextEditingController();
//  double height = MediaQuery.of(context).size.height;

  List<String> myList = ['1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19',"20","21","22",'23',"24","25","26","27","28","29","30","31","32","33"];

  
  @override

  Widget build(BuildContext context) {
   // final containerheight  = 200.0;
    double height = 200;
    void _scrollToTap(int index){
     // print("function in index scroll ${index + 9}");
      scrollcontroll.animateTo(index * height , duration: Duration(milliseconds: 500), curve: Curves.linear);

      // if(index == 0){
      //   index = index+9;
      //   scrollcontroll.animateTo(index * height , duration: Duration(milliseconds: 500), curve: Curves.linear);
      // }else if(index > 0){
      //   index = index+10;
      //   scrollcontroll.animateTo(index * height , duration: Duration(milliseconds: 500), curve: Curves.linear);
      // }

    }

    return  Scaffold(
      body: Stack(
        children: [
          ListView.builder(
            //shrinkWrap: false,
            itemBuilder: (context, index) {
             // print(" index is : $index");
             //  getIndex = index;
            // print("new index $getIndex");
              return InkWell(
                onTap: (){
                  // setState(() {
                  //   if(index == 0){
                  //     index = index + 9;
                  //     getIndex = index;
                  //   }else if(index > 0){
                  //     index = index + 10;
                  //     getIndex = index;
                  //   }
                  //   print("index this $index");
                  //   print("going this $getIndex");
                  // });
                },
                child: Container(
                  height: height,
                  decoration: BoxDecoration(color: Colors.lightBlueAccent),
                  margin: EdgeInsets.only(bottom: 3),
                  child: Text(
                    myList[index],
                    style: TextStyle(fontSize: 22,),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            },
            itemCount: myList.length,
            controller: scrollcontroll,
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // left button
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: 60,width: 60,
                    margin: EdgeInsets.only(bottom: 30,left: 30),
                    decoration: BoxDecoration(color: Colors.tealAccent,shape: BoxShape.circle),
                    child: IconButton(
                        onPressed: (){
                         // getIndex =  getIndex + 1;
                          if(textControl.text.isEmpty){
    // print(getIndex);
    getIndex = 0;
    _scrollToTap(getIndex);
    print('up');
    }
                          //  getIndex = 0;
                            //_scrollToTap(getIndex);

                           print(getIndex);
                           _scrollToTap(getIndex);
                          print('textfield');
                    //scrollcontroll.animateTo( 300.0,   duration: Duration(milliseconds: 500), curve: Curves.linear);
                          FocusScope.of(context).requestFocus(new FocusNode());
                      FocusScopeNode currentFocus = FocusScope.of(context);
                      if (!currentFocus.hasPrimaryFocus) {
                        currentFocus.unfocus();
                      }
                    }, icon: Icon(Icons.arrow_downward))
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(bottom: 30,right: 20,left: 20),
                  child: TextFormField(
                    controller: textControl,
                    decoration: InputDecoration(border: OutlineInputBorder(),),
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      if(value.isEmpty){
value = '1';
getIndex = int.parse(value);
getIndex = getIndex-1;
                      }
else{
                        print('input is : $value');
                        getIndex = int.parse(value);
                        getIndex = getIndex-1;
                        print(" my index is textfield $getIndex");

                      }

                      //getValue = int.parse(value);

                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                    height: 60,width: 60,
                    margin: EdgeInsets.only(bottom: 30,right: 30),
                    decoration: BoxDecoration(color: Colors.tealAccent,shape: BoxShape.circle),
                    child: IconButton(onPressed: (){
                      _scrollToTap(getIndex);

                    }, icon: Icon(Icons.arrow_upward))),
              ),
            ],
          ),
          // Positioned(
          //   right: 30,
          //
          //   child: Align(
          //     alignment: Alignment.bottomLeft,
          //     child: Container(
          //         height: 60,width: 60,
          //         margin: EdgeInsets.only(bottom: 30,right: 30),
          //         decoration: BoxDecoration(color: Colors.tealAccent,shape: BoxShape.circle),
          //         child: IconButton(onPressed: (){
          //
          //         }, icon: Icon(Icons.arrow_downward))),
          //   ),
          // )
        ],

      ),


            // child: Container(
            //   height: height/10,
            //   //height: 100,
            //   width: 200,
            //   margin: EdgeInsets.all(5),
            //   // padding: EdgeInsets.all(50),
            //   //decoration: BoxDecoration(color: Colors.white54),
            //   color: Colors.lightBlueAccent,
            //   child: Text(
            //     myList[index],
            //     style: TextStyle(fontSize: 22,),
            //     textAlign: TextAlign.center,
            //   ),
            // ),
          );
  }
}
