import 'package:flutter/material.dart';
import 'package:musix/test.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Welcome to Flutter',
      home: Scaffold(
          backgroundColor: Color(0xffE5EEFD),
          body: SafeArea(
            child: playerList(),
          )),
    );
  }
}
