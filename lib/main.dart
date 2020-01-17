import 'package:flutter/material.dart';
import 'package:musix/test.dart';
// import 'package:musix/test.dart';
import 'package:musix/utils/theme.dart';

import 'package:musix/music.dart';

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

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
// @override
// Widget build(BuildContext context) {
//   return MaterialApp(
//     // title: 'Welcome to Flutter',
//     home: Scaffold(
//         backgroundColor: lightTheme.backgroundColor,
//         body: SafeArea(
//           child: SongsFinder(),
//         )),
//   );
// }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // title: 'Welcome to Flutter',
//       home: Scaffold(
//           backgroundColor: lightTheme.backgroundColor,
//           body: SafeArea(
//             child: isLoading ? Text("Loading") : Text(_songs.length.toString()),
//           )),
//     );
//   }
// }
