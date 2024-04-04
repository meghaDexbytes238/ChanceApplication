import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreenSDrawer extends StatefulWidget {
  const SettingsScreenSDrawer({super.key});

  @override
  State<SettingsScreenSDrawer> createState() => _SettingsScreenSDrawerState();
}

class _SettingsScreenSDrawerState extends State<SettingsScreenSDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WellCome Settings Screen'),
      ),
    );  }
}
