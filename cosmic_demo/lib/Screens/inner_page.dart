import 'package:flutter/material.dart';

class InnerPageScreen extends StatefulWidget {

  String data1;
   InnerPageScreen({super.key, required this.data1});
  @override
  State<InnerPageScreen> createState() => _InnerPageScreenState();
}
  class _InnerPageScreenState extends State<InnerPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image/Background.png'),
              fit: BoxFit.cover,
          )
      ),
    child: Scaffold(
      backgroundColor: Colors.transparent,
    body: Stack(
      children: [
        appBarContainer(),
         allInfomationContainer(),
        Positioned(
            width: MediaQuery.of(context).size.width/1,
            bottom: 390,
            child: Image.asset('assets/image/planet.png')
        ),
      ],
    ),
    )
    );
  }
  Widget appBarContainer(){
    return  Container(
      padding: EdgeInsets.only(top: 70),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MaterialButton(
              onPressed: (){
              },
              height: 60,
              elevation: 0.5,
              color: Color(0xFF091522).withOpacity(0.8),
              shape: CircleBorder(side: BorderSide(color: Colors.black,width: 1)),
              child: Image.asset('assets/image/lefterrowWhite.png'),
            ),
            MaterialButton(
              onPressed: (){
              },
              height: 60,
              elevation: 0.5,
              color: Color(0xFF091522).withOpacity(0.8),
              shape: CircleBorder(side: BorderSide(color: Colors.black,width: 1)),
              child: Image.asset('assets/image/fillHreat.png'),
            )
            // IconButton(onPressed: onPressed, icon: icon)
          ],
        ),
      ),
    );
  }
  Widget visitButtonContainer(){
   // print(data);
    return  Container(
      height: 60,
      width: 170,
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            tileMode: TileMode.repeated,
            colors: [
              Color(0xFFE961FF),
              Color(0xFF72A5F2),
              Color(0xFF00E5E5),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,

            stops: [
              0.1,
              0.3,
              0.8,
            ],
          ),
          borderRadius: BorderRadius.circular(60)),
      child: TextButton(
        onPressed: () {
          return Navigator.pop(context);
        },
        child: Text('Visit'  ,style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w800 )),

      ),
    );
  }
  Widget space = SizedBox(
    height: 15,
  );
  Widget spaceInside = SizedBox(
    height: 3,
  );
  Widget  allInfomationContainer(){
    // var data1;
    return Container(
      width: double.infinity,
     //height: MediaQuery.of(context).size.height/2,
     // padding:  EdgeInsets.only(top: 300),
      margin:  EdgeInsets.only(top: 280),
      decoration: BoxDecoration(
        color: Color(0xFF091522).withOpacity(0.7),
        borderRadius: BorderRadius.all(Radius.circular(28)),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF091522).withOpacity(0.5),
            spreadRadius: 15,
            blurRadius: 10,
            //offset: Offset(2, 3),
          )
        ],
      ),
      child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 50),
            child: Text('${widget.data1}' ,style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.w800 )),
          ),
         // space,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset('assets/image/bag.png'),
                  spaceInside,
                  Text('Mass\n (1024kg)',
                      style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400 ,),
                    textAlign: TextAlign.center,
                  ),
                  spaceInside,
                  Text('5.97', style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w800 ),textAlign: TextAlign.center,)
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/image/gravity.png'),
                  spaceInside,
                  Text('Mass \n(1024kg)',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400 ),textAlign: TextAlign.center,),
                  spaceInside,
                  Text('5.97', style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w800 ),textAlign: TextAlign.center,)
                ],
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/image/day.png'),
                  spaceInside,
                  Text('Mass \n(1024kg)',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400 ),textAlign: TextAlign.center,),
                  spaceInside,

                  Text('5.97', style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w800 ),textAlign: TextAlign.center,)
                ],
              ),
            ],
          ),
         // space,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset('assets/image/velocity.png'),
                  spaceInside,

                  Text('Esc. Velocity\n(km/s)',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400 ),textAlign: TextAlign.center,),
                  spaceInside,

                  Text('5.97', style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w800 ),textAlign: TextAlign.center)
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/image/mean.png'),
                  spaceInside,

                  Text('Mass \n(1024kg)',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400 ),textAlign: TextAlign.center),
                  spaceInside,

                  Text('5.97', style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w800 ),textAlign: TextAlign.center)
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/image/distancefromsun.png'),
                  spaceInside,
                  Text('Mass \n(1024kg)',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400 ),textAlign: TextAlign.center),
                  spaceInside,
                  Text('5.97', style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w800 ),textAlign: TextAlign.center)
                ],
              ),
            ],
          ),
          //space,
          visitButtonContainer(),
        ],
      ),
    );
  }

}
