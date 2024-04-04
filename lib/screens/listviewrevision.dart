import 'package:flutter/material.dart';

class ListviewRevision extends StatefulWidget {
  const ListviewRevision({super.key});

  @override
  State<ListviewRevision> createState() => _ListviewRevisionState();
}
List<String> list1 = ['one' , 'two','three' , 'four'];

class _ListviewRevisionState extends State<ListviewRevision> {

  String dropdownvalue = list1.first;
  // bool isSelected = false;
  List names = [
    'm',
    'a',
    'y',
    'i',
    'o',
    'p',
    'm',
    'a',
    'y',
    'i',
    'o',
    'p',
    'm',
    'a',
    'y',
    'i',
    'o',
    'p',
    'm',
    'a',
    'y',
    'i',
    'o',
    'p'
  ];
  List subtitle = [
    'msfgg',
    'adfhf',
    'yhfh',
    'ifghfg',
    'ohjfgjfgjffhj',
    'pshgfh',
    'hakjm',
    'aauyr',
    'yagafadgf',
    'isgfdsgf',
    'oshklhf',
    'pdsgfd',
    'msgsfd',
    'agdgs',
    'ygsdgf',
    'igsg',
    'odfsgdfgs',
    'psgfsg',
    'msdgdfs',
    'sfha',
    'ygsf',
    'dgsdgi',
    'odgs',
    'ddssp'
  ];
  List<bool> isSelected = List.generate(3, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(
          children: [
            Container(
              color: Colors.tealAccent,
              child: DropdownButton(
                value: dropdownvalue,
                icon: Icon(Icons.add_call),
                onChanged: (value) {
                  setState(() {
                    dropdownvalue = value!;
                  });
                },
                items: list1.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              //RicgText
              // child: Text.rich(
              //     TextSpan(
              //   //  text: 'helooo goold morning',
              //    //   style: DefaultTextStyle.of(context).style,
              //       style: TextStyle(letterSpacing: 5 ,fontWeight: FontWeight.bold,fontSize: 20 ),
              //     children: [
              //       TextSpan(text: 'click' ),
              //       WidgetSpan(child:  TextButton(onPressed: () {  }, child: Text('Sign?' , style: TextStyle(
              //           fontWeight: FontWeight.bold,fontSize: 20 ,
              //       ),
              //         //textAlign: TextAlign.start,
              //       ),)),
              //       TextSpan(text: 'panchallll'  , style: TextStyle(
              //         letterSpacing: 0
              //       )),
              //     ]
              //   )
              // )
            //         child: RichText(
            //           text: TextSpan(
            //             text: 'hello',
            //             children: [
            //               TextSpan(
            //                   text: 'bold', style: TextStyle(fontWeight: FontWeight.bold , color: Colors.red ,
            //                   fontSize: 20, textBaseline: TextBaseline.alphabetic , ),),
            //
            // \              // WidgetSpan(
            //               //     child: TextButton(
            //               //   onPressed: () {},
            //               //   child: Text('Clich'),
            //               // ))
            //             ],
            //           ),
             // ),
            //),
            // body: ToggleButtons(
            //   children: [
            //     Icon(Icons.add_call),
            //     Icon(Icons.account_circle),
            //     Icon(Icons.add_a_photo),
            //   ],
            //   isSelected: isSelected,
            //   onPressed: (int index){
            //  setState(() {
            //    isSelected[index] = !isSelected[index];
            //  });
            //   },
            // ),
            // body: ListView.builder(
            //padding: EdgeInsets.all(50),
            // itemExtent: 50,
            //  primary: true,
            //  addAutomaticKeepAlives: true,
            //  shrinkWrap: false,
            // physics: ClampingScrollPhysics(),
            // reverse: true,
            // scrollDirection: Axis.horizontal,
            //gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //  maxCrossAxisExtent: 200,
            //     crossAxisCount: 2,
            //   mainAxisSpacing: 5,
            //   crossAxisSpacing: 5,
            //mainAxisExtent: 50,
            //   maxCrossAxisExtent: 100,
            //),
            // listtile and card example
            // itemBuilder: (BuildContext context, int index) {
            //   return Card(
            //     child: ListTile(
            //       onTap: (int index){
            //         setState(() {
            //         isSelected[index] =! isSelected[index];
            //         });
            //       },
            //       selected: isSelected,
            //       selectedColor: Colors.cyanAccent,
            //           //tileColor: Colors.tealAccent,
            //          title: Text('${names[index]}'),
            //           subtitle: Text('${names[index]}'),
            //           trailing: Icon(Icons.ice_skating),
            //           leading: CircleAvatar(backgroundImage: AssetImage('assets/image/green.jpeg')),
            //         ),
            //   );
            // return Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: ListTile(
            //     //tileColor: Colors.tealAccent,
            //    title: Text('${names[index]}'),
            //     subtitle: Text('${names[index]}'),
            //     trailing: Icon(Icons.ice_skating),
            //     leading: CircleAvatar(child: Image.asset('assets/image/flower2.jpeg')),
            //   ),
            // );
            //},
            // itemCount: names.length,
            // children: [
            //   Text('text 1' , style: TextStyle(backgroundColor: Colors.tealAccent)),
            //   Text('text 2',style: TextStyle(backgroundColor: Colors.tealAccent)),
            //   Text('text 3'),
            //   Text('text 4'),
            //   Text('text 5'),
            //   Text('text 6'),
            //   Text('text 1' , style: TextStyle(backgroundColor: Colors.tealAccent)),
            //   Text('text 2',style: TextStyle(backgroundColor: Colors.tealAccent)),
            //   Text('text 3'),
            //   Text('text 4'),
            //   Text('text 5'),
            //   Text('text 6'),
            //
            //
            // ],
            ),
            Container(
              child: DropdownMenu(
                initialSelection:list1.first,
                textStyle: TextStyle(letterSpacing: 5 , backgroundColor: Colors.blueAccent , color: Color(0xff11DCE8),
                  decorationColor: Colors.red,decorationThickness: 20,fontWeight:FontWeight.w900,
                  overflow: TextOverflow.ellipsis,
                ),
               // width: 200,
                helperText: 'megha',
                menuStyle: MenuStyle(backgroundColor: MaterialStatePropertyAll(Colors.pink[50])),
                menuHeight: 100,
                inputDecorationTheme: InputDecorationTheme(fillColor: Colors.blueAccent),

                // expandedInsets: EdgeInsets.all(10),
                hintText: 'heloo',
                leadingIcon: Icon(Icons.add_call),
                onSelected: (value) {
                  setState(() {
                  dropdownvalue = value!;
                  });
                },
                dropdownMenuEntries: list1.map<DropdownMenuEntry<String>>(( String value) {
                  return DropdownMenuEntry<String>(value: value, label: value);
    }).toList(),
    //   dropdownMenuEntries: list1.map<DropdownMenuEntry<String>>((String value) {
    //   return DropdownMenuEntry<String>(value: value, label: value);
    // }).toList(),

    ),
    ),
    ],
    )
    //},
      ),
    );
  }
}
