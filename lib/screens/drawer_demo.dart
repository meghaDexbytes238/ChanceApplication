
import 'package:allwidgetpractise/screens/home_screendrawer.dart';
import 'package:allwidgetpractise/screens/profile_screen_drawer.dart';
import 'package:allwidgetpractise/screens/setting_screen_drawer.dart';
import 'package:flutter/material.dart';
import 'drawer_seconddemo.dart';
import 'logout_screen_drawer.dart';

class DrawerDemo extends StatefulWidget {
  const DrawerDemo({super.key});
  @override
  State<DrawerDemo> createState() => _DrawerDemoState();
}
List <IconData> myicons = [Icons.home,Icons.account_circle_sharp,Icons.apps,Icons.settings,Icons.theaters,Icons.phone_android,Icons.security,
Icons.wifi,Icons.bluetooth,Icons.adb,Icons.display_settings,Icons.surround_sound,Icons.account_balance_wallet_rounded,Icons.add ,Icons.add ,
  Icons.add,Icons.add,Icons.add,Icons.settings_applications,Icons.theaters,Icons.app_blocking,];
List mylist = ['Home','profile','MyApps','Settings','Themes','MyApps','about Phone',
  'Security status','wi-fi','bluetooth' ,' Portable Hotspot','Display' ,'Sound & vibration' ,'Home Screen' ,
  'Battery','profile','LogOut','Settings','Themes','MyApps'];
List <Widget> screens = [
  HomeScreenDrawer(), ProfileScreenDrawer(),LogoutScreenDreawer(),SettingsScreenSDrawer(),LogoutScreenDreawer(), SettingsScreenSDrawer(),
  HomeScreenDrawer(), ProfileScreenDrawer(),LogoutScreenDreawer(),SettingsScreenSDrawer(),LogoutScreenDreawer(), SettingsScreenSDrawer(),
  HomeScreenDrawer(), ProfileScreenDrawer(),LogoutScreenDreawer(),SettingsScreenSDrawer(),LogoutScreenDreawer(), SettingsScreenSDrawer(),
  HomeScreenDrawer(), ProfileScreenDrawer(),
];
class _DrawerDemoState extends State<DrawerDemo> {
  int selectedIndex = 0;
  void selectindex(int index){
    setState(() {
      selectedIndex = index;
    });
  }
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('drawer')),
      drawer: Drawer(
        width: 250,

        //backgroundColor: Colors.cyan,
elevation: 20,
        shadowColor: Colors.pinkAccent,
semanticLabel: 'hellooo',
        shape: RoundedRectangleBorder(),

        surfaceTintColor: Colors.red,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(

              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                     children: [
                       Container(
                         color: Colors.lightBlueAccent,
                         height: 200,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(child: Image.asset('assets/image/green.jpeg',fit: BoxFit.fill,height: 70,width: 70,),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  Text('Megha',style: TextStyle(fontWeight: FontWeight.w800 , fontSize: 22),),
                  Text('megha.dexbytes@gmail.com',style: TextStyle(fontSize: 10),),

                ],
              ),

                       )
                     ],
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                      return   ListTile(
                        title: Text('${mylist[index]}'),
                        leading: Icon(myicons[index]),
                        selected: selectedIndex == index,
                        onTap: (){
                          selectindex(index);
                          Navigator.pop(context);
                        },
                      );
                    },
                      itemCount: mylist.length,
                    ),
                  ],
                ),
              ),
            ),
          ),
         // Text('helloo'),
          Container(
            height: 50,
            child: ListTile(
                title: Text('Logout'),
                leading: Icon(Icons.logout),
                onTap: () {
                 // Navigator.push(context, MaterialPageRoute(builder: (context) => LogoutScreenDreawer()));
                },
              ),
          ),

        ],

      ),

//         child: ListView(
//           children: [
//             DrawerHeader(
//
//               //padding: EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 color: Colors.pinkAccent[100],
//                 //borderRadius: BorderRadius.all(Radius.circular(20)),
//               ),
//               //margin: EdgeInsets.all(10),
//
//               child: Column(
//                 children: [
//                   ClipRRect(child: Image.asset('assets/image/green.jpeg',fit: BoxFit.fill,height: 70,width: 70,),
//                     borderRadius: BorderRadius.circular(35),
//                   ),
//                   Text('Megha',style: TextStyle(fontWeight: FontWeight.w800 , fontSize: 22),),
//                   Text('megha.dexbytes@gmail.com',style: TextStyle(fontSize: 10),),
//
//                 ],
//               ),
// //               child: CircleAvatar(
// // backgroundImage: AssetImage('assets/image/green.jpeg'),
// //                 //  child: Image.asset('assets/image/green.jpeg',width: 50,height: 50,isAntiAlias: true,fit: BoxFit.cover,)),
// //
// //             ),
//
//             ),
// //             ListTile(
// //               title: Text('Home'),
// //               leading: Icon(Icons.home),
// //               onTap: () {
// // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreenDrawer()));
// //               },
// //             ),
//             // ListTile(
//             //   title: Text('Profile'),
//             //   leading: Icon(Icons.account_circle_outlined),
//             //   onTap: () {
//             //     Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreenDrawer()));
//             //
//             //   },
//             // ),
//             // ListTile(
//             //   title: Text('Settings'),
//             //   leading: Icon(Icons.settings),
//             //   onTap: () {
//             //     Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreenSDrawer()));
//             //
//             //   },
//             // ),
//             // ListTile(
//             //   title: Text('Mobile Thems'),
//             //   leading: Icon(Icons.add_box),
//             //   onTap: () {
//             //     Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreenDrawer()));
//             //   },
//             // ),
//             // ListTile(
//             //   title: Text('Logout'),
//             //   leading: Icon(Icons.logout),
//             //   onTap: () {
//             //     Navigator.push(context, MaterialPageRoute(builder: (context) => LogoutScreenDreawer()));
//             //   },
//             // ),
//
//
//
//           ],
//             itemBuilder: (context, index) {
//               return ListTile(
//                 onTap: () {
// Navigator.push(context, MaterialPageRoute(builder: (context) => screens[index]));
//                 },
//                 title: Text(list[index]),
//               );
//             },
//           itemCount: list.length,
        ),
      body: screens[selectedIndex],
      bottomNavigationBar: BottomAppBar(
        height: 100,
     clipBehavior: Clip.antiAlias,
     //  color: Colors.lightGreenAccent,
        elevation: 10,
        shadowColor: Colors.blue,
        surfaceTintColor: Colors.pinkAccent,
        notchMargin: 22,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){
              print('call');
            }, icon: Icon(Icons.call)),
            IconButton(onPressed: (){
              print('click');
            }, icon: Icon(Icons.camera)),
            IconButton(onPressed: (){
              print('send mail');
            }, icon: Icon(Icons.email))
          ],
        ),
      ),
    );
  }
}
