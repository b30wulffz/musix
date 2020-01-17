import 'package:flutter/material.dart';
import 'package:musix/test.dart';
import 'package:musix/utils/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Welcome to Flutter',
      home: Scaffold(
          backgroundColor: lightTheme.backgroundColor,
          body: SafeArea(
            child: playerList(),
          )),
    );
  }
}
