import 'package:flutter/material.dart';

class Try_Class extends StatefulWidget {
  const Try_Class({super.key});

  @override
  State<Try_Class> createState() => _Try_ClassState();
}

class _Try_ClassState extends State<Try_Class> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 219,
    width: double.infinity,
    color:  Colors.cyan,
    // decoration: BoxDecoration(
    // // color: Color(0xFF091522).withOpacity(0.70),
    // borderRadius: BorderRadius.all(Radius.circular(28)),
    // boxShadow: [
    // BoxShadow(
    // color:  Color(0xFF091522).withOpacity(0.6),
    // spreadRadius: 2,
    // blurRadius: 3,
    // offset: Offset(0, 3),)
    // // BoxShadow(color: Colors.black87)
    // ],
    //
    // ),
        child: Column(
          children: [
            Text('Planet of the day'),

            Expanded(
              //working
              //  child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children:  [
              //       Text("This is very very  long text in Row 2 of Column",
              //           style: TextStyle(
              //               overflow: TextOverflow.ellipsis,
              //               backgroundColor: Colors.yellow)),
              //       Column(
              //         children: [
              //           Text(
              //             "This is very very very very very very very very very his is very very very very very very very very very his is very very very very very very very very very very his is very very very very very very very very very very |very very very This is very very very very very very very very very very |very very very This is very very very very very very very very very very |very very very This is very very very very very very very very very very |very very very very very very very  long text in Row 1 of Column",
              //            maxLines: 5,
              //             style: TextStyle(
              //                 backgroundColor: Colors.green, overflow: TextOverflow.ellipsis),
              //           ),
              //         ],
              //       ),
              //
              //     ],
              //   )
              // child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Image.asset('assets/image/planet12.png'),
                  child:  Row(
                    children: [
                      Image.asset('assets/image/planet12.png'),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             Text('Mars'),
                              Expanded(
                                  child: Column(
                              children: [
                              Text(
                                  "This text is so long and long and long and long and long and that's why it is not wrapping to next line.",)
                            ]
                          ))
                        
                        ],
                                        ),
                      ),
                    ],
                  ),
            ),
            Row(
              children: [
                Text('Details'),
                Image.asset('assets/image/Errow2.png')
              ],
            ),
          ],
        ),

      ),
    );
  }
}

