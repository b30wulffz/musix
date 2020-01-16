import 'package:flutter/material.dart';
import 'package:musix/button.dart';

class playerList extends StatefulWidget {
  @override
  _playerListState createState() => _playerListState();
}

class _playerListState extends State<playerList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 120,
          alignment: Alignment.center,
          child: Text(
            "SKIN · FLUME",
            style: TextStyle(
                color: Color(0xffA2B1CA),
                fontWeight: FontWeight.w800,
                fontSize: 16),
          ),
          // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            InkWell(
              customBorder: CircleBorder(),
              onTap: () {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text('Tap'),
                ));
              },
              child: Button3d(
                icon: Icons.favorite,
              ),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Color(0xffE0EAFB), width: 6.0),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffACBAD3),
                    blurRadius: 20.0,
                    offset: Offset(10.0, 10.0),
                  ),
                  BoxShadow(
                    color: Color(0xffFBFFFF),
                    blurRadius: 10.0,
                    // spreadRadius: 2.0,
                    offset: Offset(-10.0, -10.0),
                  )
                ],
                color: Colors.white,
              ),
              child: CircleAvatar(
                radius: 70,
                backgroundImage:
                    ExactAssetImage('assets/images/defaultLogo.jpg'),
              ),
            ),
            Button3d(
              icon: Icons.more_horiz,
            ),
          ],
        )
        // Expanded(
        //   child: Container(
        //     // width: 100,
        //     // height: 100,
        //     alignment: Alignment.center,
        //     // transform: Transform.rotate(...),
        //     child: Text("hello"),
        //     decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        //   ),
        //   // flex: 1,
        // ),
        // Expanded(
        //   child: Container(
        //     // width: 100,
        //     // height: 100,
        //     alignment: Alignment.center,
        //     // transform: Transform.rotate(...),
        //     child: Text("hello"),
        //     decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        //   ),
        // flex: 1,
        // )
      ],
    );
    // return
    // return Container(
    //   height: 120.0,
    //   width: 120.0,
    //   color: Colors.blue[50],
    //   child: Align(
    //     alignment: Alignment.center,
    //     child: FlutterLogo(
    //       size: 60,
    //     ),
    //   ),
    // );
    // return Container(
    //   child: Text(
    //     "SKIN . FLUME",
    //     style: TextStyle(color: Color(0xFFA1B0C7), fontWeight: FontWeight.bold),
    //   ),
    // alignment: ,
    // );
  }
}
