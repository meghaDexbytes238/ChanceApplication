// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:cosmic_demo/Screens/inner_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'favourite_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {

  // final String testdata;
  // const HomeScreen({super.key, required this.testdata});

  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int selectedIndex = 0;
List buttonName = ['Mercury', 'Venus', 'Earth', 'Earth'];
List<String> IconsStr = [
  'assets/image/planetmercury.png',
  'assets/image/planet1.png',
  'assets/image/planetmercury.png',
  'assets/image/planet3.png'
];
class _HomeScreenState extends State<HomeScreen> {
  // final String testdata;
  // const Item({super.key, required this.testdata});
  // _HomeScreenState(this.title);
  // void _onItemTapped(int index) {
  //   setState(() {
  //     selectedIndex = index;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
   // Size size = MediaQuery.of(context).size;

    Widget planetListContainer() {
      return Container(
       // color: Colors.red,
        alignment: Alignment.topLeft,
       // margin: EdgeInsets.only(top: size.height / 6),
        height: 55,
        padding: EdgeInsets.only(left: 20),
        child: ListView.builder(
          //controller: title ,//???/////
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    InnerPageScreen(data1: buttonName[index])));
              },

              child: Container(
                padding: EdgeInsets.only(right: 15),
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Color(0xFF091522).withOpacity(0.5),
                  borderRadius: BorderRadius.all(Radius.circular(28)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF091522).withOpacity(0.5),
                      blurRadius: 10,
                    )
                  ],
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(IconsStr[index]),
                      Text(
                         buttonName[index],
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        overflow: TextOverflow.visible,
                      )
                    ]),
              ),
            );
          },
          itemCount: buttonName.length,
        ),
      );
    }

    //for First block
    Widget planetDayFunc() {
      return Container(
        // height: 219,
        padding: EdgeInsets.all(30),
        margin: EdgeInsets.all(30),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFF091522).withOpacity(0.5),
          borderRadius: BorderRadius.all(Radius.circular(28)),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF091522).withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 8,
              offset: Offset(0, 3),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Planet of the day',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Figtree',
                fontWeight: FontWeight.w800,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/image/planet12.png', fit: BoxFit.cover),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Mars',
                        style: TextStyle(
                          color: Color(0xFF11DCE8),
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          'Mars is the fourth planet from the Sun and the '
                          'second-smallest planet in the Solar System,'
                          ' only being larger than Mercury. In the English'
                          ' language, Mars is named for the Roman god of war.',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          )),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Details',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                    )),
                Image.asset(
                  'assets/image/Errow2.png',
                )
              ],
            ),
          ],
        ),
      );
    }
    // second Block
    Widget secondBlock() {
      return Container(

        // height: 219,
        padding: EdgeInsets.all(30),
        margin: EdgeInsets.only(left: 30, right: 30,bottom: 85),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFF091522).withOpacity(0.5),
          borderRadius: BorderRadius.all(Radius.circular(28)),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF091522).withOpacity(0.5),
              spreadRadius: 8,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Solar System',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                  color: Colors.white,
                )),
            SizedBox(
              height: 13,
            ),
            Text(
              'The Solar System[c] is the gravitationally bound system of the Sun and the objects that orbit it. It formed 4.6 billion years ago from the gravitational collapse of a giant interstellar molecular cloud. The vast majority (99.86%) of the systems mass is in the Sun, with most of the remaining mass contained in the planet Jupiter. The four inner system planets—Mercury, Venus, Earth and Mars—are terrestrial planets, being composed primarily of rock and metal. The four giant planets of the outer system are substantially larger and more massive than the terrestrials. ',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.white),
            )
          ],
        ),
      );
    }
    Widget space = SizedBox(
      height: 20,
    );
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image/Background.png'),
              fit: BoxFit.cover)
      ),
      child: Scaffold(
backgroundColor: Colors.transparent,
        //extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 85,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(28),
                  bottomLeft: Radius.circular(28))),
          primary: true,
          backgroundColor: const Color(0xFF091522).withOpacity(0.7),
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          title: const Column(children: [
            Text(
              'Milky Way',
              style: TextStyle(
                color: Color(0xFF8D8E99),
                fontFamily: 'Figtree',
                fontWeight: FontWeight.w400,
                fontSize: 10,
              ),
            ),
            Text(
              'Solar System',
              style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontFamily: 'Figtree',
                  fontWeight: FontWeight.w800,
                  fontSize: 24),
            ),
          ]),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black87, width: 1)),
                  child: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.white,
                  )),
            )
          ],
        ),
        body: SingleChildScrollView(
scrollDirection: Axis.vertical,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,

            children: [
SizedBox(
  height: 30,
),
              planetListContainer(),
              planetDayFunc(),
              secondBlock(),
              //space,
            ],
          ),
        ),
        // bottomNavigationBar: Container(
        //   height: 80,
        //   decoration: BoxDecoration(
        //     color: Color(0xFF091522).withOpacity(0.5),
        //     borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
        //   ),
        //   child: BottomNavigationBar(
        //     backgroundColor: Colors.transparent,
        //     showUnselectedLabels: true,
        //     showSelectedLabels: true,
        //     useLegacyColorScheme: true,
        //     items: [
        //       BottomNavigationBarItem(
        //         icon: SvgPicture.asset('assets/image/homeIcon.svg'),
        //         activeIcon: SvgPicture.asset('assets/image/homeIcon.svg',color:  Color(0xFF11DCE8),),
        //         label: 'Home',
        //
        //       ),
        //       BottomNavigationBarItem(
        //         //icon: Icon(Icons.heart),
        //         icon: SvgPicture.asset('assets/image/heartsvg.svg'),
        //         activeIcon: SvgPicture.asset('assets/image/heartsvg.svg',color:  Color(0xFF11DCE8),),
        //         // icon: Image.asset('assets/image/hearticojn.png',),
        //         label: 'Favourites',
        //       ),
        //       BottomNavigationBarItem(
        //         icon: SvgPicture.asset('assets/image/more.svg'),
        //         activeIcon: SvgPicture.asset('assets/image/more.svg',color:  Color(0xFF11DCE8) ,),
        //         //  icon: Image.asset('assets/image/moreicon.png',),
        //         label: 'More',
        //       ),
        //     ],
        //     currentIndex: selectedIndex,
        //     onTap: _onItemTapped,
        //     // onTap: (value) {
        //     //   return setState(() {
        //     //     selectedIndex = value;
        //     //   });
        //     // },
        //     type: BottomNavigationBarType.fixed,
        //     //enableFeedback: true,
        //     selectedIconTheme: const IconThemeData( color: Color(0xFF11DCE8) ),
        //     selectedItemColor: Colors.white,
        //     unselectedIconTheme: const IconThemeData( color: Colors.white),
        //     unselectedItemColor: Color(0xFF8D8E99),
        //   ),
        // ),

      ),

    );
  }
}
