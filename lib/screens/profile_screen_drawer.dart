import 'package:flutter/material.dart';

class ProfileScreenDrawer extends StatefulWidget {
  const ProfileScreenDrawer({super.key});

  @override
  State<ProfileScreenDrawer> createState() => _ProfileScreenDrawerState();
}

class _ProfileScreenDrawerState extends State<ProfileScreenDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WellCome profle Screen'),
      ),
    );
  }
}
