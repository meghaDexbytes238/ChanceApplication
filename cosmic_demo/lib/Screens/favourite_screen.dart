import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}
int selectedIndex = 1;
// void _onItemTapped(int index) {
//   setState(() {
//     _selectedIndex = index;
//   });
// }
List titleName = ['Mercury','Venus','Earth','Mars','Mercury','Venus','Earth','Mars',];
List subtitle = ["Mercury is the smallest planet in the Solar System and the closest to the Sun.",

"Venus is the second planet from the Sun and is Earth's closest planetary neighbor.",
  "Earth is an ellipsoid with a circumference of about 40,000 km. It is the densest planet in the Solar System."
,"Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System",
'Mercury is the smallest planet in the Solar System and the closest to the Sun.',
  "Venus is the second planet from the Sun and is Earth's closest planetary neighbor.",
  "Earth is an ellipsoid with a circumference of about 40,000 km. It is the densest planet in the Solar System.",
  "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System",
];
List <String> imagesnames = ['assets/image/mercuryplan.png','assets/image/venus.png','assets/image/earth.png','assets/image/mars.png','assets/image/mercuryplan.png','assets/image/venus.png','assets/image/earth.png','assets/image/mars.png'];
class _FavouriteScreenState extends State<FavouriteScreen> {
  get itemBuilder => null;

  @override
  Widget build(BuildContext context) {
    return  Container(
     // height: MediaQuery.,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image/Background.png'),fit: BoxFit.fill
        )
      ),
      child: Scaffold(


        extendBody: true,
        extendBodyBehindAppBar: true,

        backgroundColor: Colors.transparent,

        appBar: AppBar(
leadingWidth: 70,

leading: Padding(
  padding: const EdgeInsets.only(left: 20),
  child: Container(
      //width: 40,
      //height: 40,
      //padding: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: Color(0xFF091522).withOpacity(0.5),
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black,width: 1),
      ),
      child: Icon(Icons.menu,color: Colors.white,)
  ),
),
          title: Text('Favourites'),
          toolbarHeight: 80,
          centerTitle: true,
          titleTextStyle: TextStyle(fontWeight: FontWeight.w800,
              fontSize: 24,color: Colors.white,fontFamily: 'Figtree',
          ),
          actions: [
            Container(
              width: 48,
              height: 48,
margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                  color: Color(0xFF091522).withOpacity(0.5),
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black,width: 1),


              ),
                child: Icon(Icons.account_circle_outlined,color: Colors.white,),
            ),],
          backgroundColor: Color(0xFF091522).withOpacity(0.5),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), bottomLeft: Radius.circular(28)),
          side: BorderSide(color: Colors.black,width: 1,strokeAlign: 0.2)
          ),

      ),
        body: ListView.builder(
            itemBuilder: (context, index) {
return Container(
  padding: EdgeInsets.only(right: 20,top: 20,bottom: 20,left: 10),
  margin: EdgeInsets.only(right: 25,top: 25,left: 25),

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
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
         Image.asset('${imagesnames[index]}',fit: BoxFit.fitHeight),
      Expanded(
        child: Column(
          children: [
            SizedBox(height: 6,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${titleName[index]}',style: TextStyle(color: Color(0xFF11DCE8),fontFamily: 'Figtree',
                                      fontSize: 16,fontWeight: FontWeight.w800 ,
                                      leadingDistribution: TextLeadingDistribution.proportional,), ),
                Image.asset('assets/image/hearticojn.png',color: Colors.white,)
              ],
            ),
            SizedBox(height: 3,),
            Text('${subtitle[index]}' ,style: TextStyle(color: Colors.white,fontFamily: 'Figtree',fontSize: 12,fontWeight: FontWeight.w400 ),),
            SizedBox(height: 3,),
            Row(
mainAxisAlignment: MainAxisAlignment.end,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Text('Details',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 12,fontFamily: 'Figtree',),),
Image.asset(
'assets/image/Errow2.png',
)
],
)
          ],
        ),
      ),
    ],
  ),
);
            },
          itemCount: titleName.length,
        ),
        bottomNavigationBar: Container(
          height: 80,
          decoration: BoxDecoration(
            color: Color(0xFF091522).withOpacity(0.5),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
           // selectedLabelStyle: TextStyle(color: Colors.white),

            //selectedItemColor: Color(0XFFFFFFFF),
           // unselectedIconTheme: IconThemeData(color: Colors.red),
           // selectedIconTheme: IconThemeData(color: Colors.yellow),
           // unselectedIconTheme: IconThemeData(color: Colors.red),
            //unselectedItemColor: Color(0xFF8D8E99),
           //fixedColor: Colors.lightGreenAccent,
showUnselectedLabels: true,
           showSelectedLabels: true,
           useLegacyColorScheme: true,
           // se: Icon(Icons.home),
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/image/homeIcon.svg'),
                activeIcon: SvgPicture.asset('assets/image/homeIcon.svg',color:  Color(0xFF11DCE8),),

                label: 'Home',
              ),
              BottomNavigationBarItem(
                //icon: Icon(Icons.heart),
                icon: SvgPicture.asset('assets/image/heartsvg.svg'),
                activeIcon: SvgPicture.asset('assets/image/heartsvg.svg',color:  Color(0xFF11DCE8),),
               // icon: Image.asset('assets/image/hearticojn.png',),
                label: 'Favourites',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/image/more.svg'),
                activeIcon: SvgPicture.asset('assets/image/more.svg',color:  Color(0xFF11DCE8) ,),
              //  icon: Image.asset('assets/image/moreicon.png',),
                label: 'More',
              ),
            ],
            currentIndex: selectedIndex,
            onTap: (value) {
              return setState(() {
                selectedIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            //enableFeedback: true,
            selectedIconTheme: const IconThemeData( color: Color(0xFF11DCE8) ),
            selectedItemColor: Colors.white,
            unselectedIconTheme: const IconThemeData( color: Colors.white),
            unselectedItemColor: Color(0xFF8D8E99),
          ),
        ),
      ),
    );
  }
}
