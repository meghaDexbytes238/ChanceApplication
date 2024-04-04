import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DynamicControllListDemo extends StatefulWidget {
  const DynamicControllListDemo({super.key});
  @override
  State<DynamicControllListDemo> createState() => _DynamicControllListDemoState();
}
int indexm = 0;
List<DynamicWigdetsTextfield> listDynamic = [];
List<TextEditingController> listControllrs = [TextEditingController()];
TextEditingController textController = TextEditingController();
class _DynamicControllListDemoState extends State<DynamicControllListDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        listDynamic.add(DynamicWigdetsTextfield());
        listControllrs.add(textController);
        print("list of textfield:   $listDynamic , $indexm ");
        print("list of textfield:   $listControllrs");
        print("list of textfield:   $textController");

        setState(() {
        });
      },child: Icon(Icons.add)),

      body: Column(
        children: [
          Flexible(
            child: ListView.builder(
              itemBuilder: (context, index) {
                  indexm = index +1 ;
                  textController = (listControllrs[index]);
                  print("list ${listControllrs}");
              return listDynamic[index];
            },
              itemCount: listDynamic.length,
            ),
          ),
          TextButton(onPressed: (){
       
          }
              , child: Text('subit data'))
        ],
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
      child: TextFormField(
     //   controller: listControllrs,
        decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Enter data $indexm'),
      ),
    );
  }
}

