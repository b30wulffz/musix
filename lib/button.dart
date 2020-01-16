import 'package:flutter/material.dart';

class Button3d extends StatefulWidget {
  Button3d({Key key, this.icon}) : super(key: key);
  final IconData icon;
  @override
  _Button3dState createState() => _Button3dState();
}

class _Button3dState extends State<Button3d> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Color(0xffE0EAFB), width: 5.0),
          boxShadow: [
            BoxShadow(
              color: Color(0xffACBAD3),
              blurRadius: 20.0,
              offset: Offset(7.0, 7.0),
            ),
            BoxShadow(
              color: Color(0xffFBFFFF),
              blurRadius: 10.0,
              // spreadRadius: 2.0,
              offset: Offset(-7.0, -7.0),
            )
          ],
          // color: Color(0xffebf1fc),
          gradient: RadialGradient(
            colors: [
              const Color(0xffE5EEFD), // yellow sun
              const Color(0xffffffff), // blue sky
            ],
            radius: 0.55,
            stops: [0.6, 1.0],
          )),
      child: Icon(
        widget.icon,
        size: 20,
        color: Color(0xffA2B1CA),
      ),
    );
  }
}
