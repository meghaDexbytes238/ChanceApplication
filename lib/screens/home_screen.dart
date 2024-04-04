import 'package:allwidgetpractise/config/custom_routes.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //color: Colors.orange,
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),

        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(10)),
              ListTile(
                tileColor: Colors.cyan,
                onTap: () =>
                    Navigator.pushNamed(context, CustomRoutes.gridviewDemo),
                title: Text('gridview'),
                titleAlignment: ListTileTitleAlignment.bottom,
                horizontalTitleGap: 0,
                minLeadingWidth: 100,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              SizedBox(height: 20),
              ListTile(
                onTap: () =>
                  Navigator.pushNamed(
                      context, CustomRoutes.gridviewBuilderDemo),
                title: Text('gridview builder'),
                tileColor: Colors.pinkAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              SizedBox(height: 20),
              ListTile(
                onTap: ()=>
                  Navigator.pushNamed(context, CustomRoutes.gridviewCountDemo),
                title: Text('gridview count'),
                tileColor: Colors.tealAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              SizedBox(height: 20),
              ListTile(
                onTap: () => Navigator.pushNamed(context, CustomRoutes.gridviewExtent),
                title: Text('gridview Extent'),
                tileColor: Colors.pinkAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              SizedBox(height: 20),
              ListTile(
                // onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => Chips_InputDemo()),
                //   );
                // },
                onTap: () => Navigator.pushNamed(context, CustomRoutes.inputChipsDemo),

                title: Text('Chips type'),
                tileColor: Colors.yellow,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              SizedBox(height: 20),
              ListTile(
               // onTap: () {
                  onTap: () => Navigator.pushNamed(context, CustomRoutes.imageScreen),

                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => SetImageVideoScreen()),
                  // );
               // },
                title: Text('Set Assets'),
                tileColor: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              SizedBox(height: 20),
              ListTile(
                onTap: () => Navigator.pushNamed(context, CustomRoutes.stackScreen),

                // onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => StackScreen()),
                //   );
                // },
                title: Text('stack Screens'),
                tileColor: Colors.deepOrangeAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              SizedBox(height: 20),
              ListTile(
                onTap: () => Navigator.pushNamed(context, CustomRoutes.stackScreen2),
                // onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => StackDemo2()),
                //   );
                // },
                title: Text('stack Screens 2'),
                tileColor: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              SizedBox(height: 20),
              ListTile(
                onTap: () => Navigator.pushNamed(context, CustomRoutes.stackDemo3),
                // onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => StackDemo3()),
                //   );
                // },
                title: Text('stack Screens 3'),
                tileColor: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              SizedBox(height: 20),
              ListTile(
                onTap: () => Navigator.pushNamed(context, CustomRoutes.paddingDemo),
                // onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => PaddingDemo1()),
                //   );
                // },
                title: Text('padding demo 1'),
                tileColor: Colors.tealAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              SizedBox(height: 20),
              ListTile(
                onTap: () => Navigator.pushNamed(context, CustomRoutes.listviewRevision),
                // onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => ListviewRevision()),
                //   );
                // },
                title: Text('listviewrevision demo'),
                tileColor: Colors.tealAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              SizedBox(height: 20),
              ListTile(
                onTap: () => Navigator.pushNamed(context, CustomRoutes.listviewRevision),
                // onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => ListviewRevision()),
                //   );
                // },
                title: Text('textformfield demo'),
                tileColor: Colors.tealAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              SizedBox(height: 20),
              ListTile(
                onTap: () => Navigator.pushNamed(context, CustomRoutes.listviewRevision),
                // onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => ListviewRevision()),
                //   );
                // },
                title: Text('drawer demo'),
                tileColor: Colors.tealAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
