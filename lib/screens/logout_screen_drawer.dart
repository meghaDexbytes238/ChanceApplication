import 'package:flutter/material.dart';

class LogoutScreenDreawer extends StatefulWidget {
  const LogoutScreenDreawer({super.key});

  @override
  State<LogoutScreenDreawer> createState() => _LogoutScreenDreawerState();
}

class _LogoutScreenDreawerState extends State<LogoutScreenDreawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WellCome logout Screen'),
      ),
    );
  }
}
