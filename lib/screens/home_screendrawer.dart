import 'package:flutter/material.dart';

class HomeScreenDrawer extends StatefulWidget {
  const HomeScreenDrawer({super.key});

  @override
  State<HomeScreenDrawer> createState() => _HomeScreenDrawerState();
}

class _HomeScreenDrawerState extends State<HomeScreenDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WellCome Home Screen'),
      ),
    );
  }
}
