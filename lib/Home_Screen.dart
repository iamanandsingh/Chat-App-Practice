import 'package:flutter/material.dart';

import 'ChatScreen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        title: Text("Chat App"),
        backgroundColor: Colors.teal,
      ),
      body:ChatScreen(),
    );
  }
}