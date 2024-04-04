import 'package:flutter/material.dart';

class DynamicTextFieldDemo2 extends StatefulWidget {
  const DynamicTextFieldDemo2({super.key});
  @override
  State<DynamicTextFieldDemo2> createState() => _DynamicTextFieldDemo2State();
}
List<TextEditingController> listTextController = [TextEditingController()];
List<TextEditingController> listTextController1 = [TextEditingController()];
String collectValue = '';
int indexForMe = 0;
List<String> valueList = [];

class _DynamicTextFieldDemo2State extends State<DynamicTextFieldDemo2> {
  // onsubmit(){
  //   listTextController.forEach((element) => print(element.listTextController.));
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        //physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            SingleChildScrollView(
              child: ListView.separated(

                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child:  Container(
                              child:  TextFormField(
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
                               //  onFieldSubmitted: (value) {
                               //
                               //    // getvalue = value;
                               //   // print(" filed 1 ${[index]}  and $value");
                               // // valueList[index].add(value);
                               //  //  indexForMe = index;
                               //  //  collectValue  = value;
                               //   // listTextController[index].text = value;
                               //    print("value in controllers ${listTextController[index].text}");
                               //  },

                              ),
                              height: 60,
                              alignment: Alignment.center,
                            ),
                          ),
                          SizedBox(width: 10,),
                          IconButton(
                            onPressed: () {
                              print('object');
                              setState(() {
                                listTextController1.add(TextEditingController());
                              });
                            }, icon: Icon(Icons.add) , iconSize: 35 , tooltip: 'Add', ),
                          /*IconButton(
                            onPressed: () {
                           setState(() {
                           print(listTextController.length);
                            // valueList.removeAt(index);
                           // listTextController[index].clear();
                           // listTextController[index].dispose();
                          // valueList1.removeAt(index);
                           listTextController.removeAt(index);
                           valueList = List.generate(listTextController.length, (index) => listTextController[index].text);
                           // valueList1.clear();
                           // valueList1 = valueList;
                           // valueList1[index].clear();
                           // valueList1[index].dispose();
                           // valueList1.removeAt(index);
                          // valueList1 = valueList;
                             print('remove index : $index');
                         });
                          }, icon: Icon(Icons.delete) , iconSize: 35 , tooltip: 'delete', ),*/
                        ],
                      ),
                      ListView.builder(
                        itemBuilder: (context, index) {
                        return Flexible(
                            child: Container(
                            height: 50,
                            width: 150,
                            child: TextFormField(

                              controller: listTextController1[index],
                              decoration: InputDecoration(
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                        ),
                            )
                        )
                        )
                        );
                      },
                      itemCount: listTextController1.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                      ),
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
            ),
           // SizedBox(height: 20,),
            ListView.builder(
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {

                return  listTextController[index].text == "" ?SizedBox(): Text('TextField  ${index + 1} : ${valueList[index]}', textAlign: TextAlign.center,);
                  // return  listTextController[index].text == "" ?SizedBox():Text("TextField  ${index + 1}  : "
                  //     "${listTextController[index].text}",textAlign: TextAlign.center,);
                },
              itemCount: valueList.length,
             // itemCount: listTextController.length,
            ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
        ElevatedButton(
        onPressed: (){
        setState(() {
          listTextController1.clear();
         // listTextController1.dispose();
       listTextController.add(TextEditingController());
         // listTextController1.clear();
       // ListtextController.indexOf(TextEditingController());
        print(listTextController);
        });
        }
        , child: Text('Add More Textfields'),
        ),
        ElevatedButton(
          onPressed: (){
           // print("value list is a : $valueList");
            setState(() {

//listTextController[indexForMe].text = collectValue;
            //  listTextController1.add(TextEditingController());
          valueList = List.generate(listTextController.length, (index) => listTextController[index].text);
         // print(valueList2);
             // ListtextController.add(TextEditingController());
             // print(ListtextController);

            });
          }
          , child: Text('View Text Values'),

        ),
            ],
          ),
        ),

          ],
        ),
      ),
    );
  }
}


class DynamicWigdetsTextfield extends StatelessWidget {
  const DynamicWigdetsTextfield({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Text(
        collectValue
        //   controller: listControllrs,
      //  decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Enter data $indexm'),
      ),
    );
  }
}

