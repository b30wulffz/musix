import 'package:flutter/material.dart';
import 'package:musix/button.dart';
import 'package:musix/utils/theme.dart';
import 'package:musix/listitem.dart';

class playerList extends StatefulWidget {
  @override
  _playerListState createState() => _playerListState();
}

class _playerListState extends State<playerList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 110,
          alignment: Alignment.center,
          child: Text(
            "SKIN · FLUME",
            style: TextStyle(
                color: lightTheme.primaryColor,
                fontWeight: FontWeight.w900,
                fontSize: 15),
          ),
          // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Button3d(
              icon: Icons.favorite,
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
        ),
        SizedBox(
          height: 60,
        ),
        ListItem3d(
          active: false,
          songName: "Never Be Like You",
          singers: "Flume · Vic Mensa",
        ),
        ListItem3d(
          active: false,
          songName: "Never Be Like You",
          singers: "Flume · Vic Mensa",
        ),
        ListItem3d(
          active: true,
          songName: "Never Be Like You",
          singers: "Flume · Vic Mensa",
        ),
        ListItem3d(
          active: false,
          songName: "Never Be Like You",
          singers: "Flume · Vic Mensa",
        ),
        ListItem3d(
          active: false,
          songName: "Never Be Like You",
          singers: "Flume · Vic Mensa",
        ),
        ListItem3d(
          active: false,
          songName: "Never Be Like You",
          singers: "Flume · Vic Mensa",
        ),
      ],
    );
  }
}
