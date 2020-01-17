import 'package:flutter/material.dart';
import 'package:musix/utils/theme.dart';

class Button3d extends StatefulWidget {
  Button3d(
      {Key key,
      this.icon,
      this.padding = 15,
      this.size = 20,
      this.active = false})
      : super(key: key);
  final IconData icon;
  final double padding;
  final double size;
  final bool active;
  @override
  _Button3dState createState() => _Button3dState();
}

class _Button3dState extends State<Button3d> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            color: widget.active ? Color(0xff98a6ed) : Color(0xffE0EAFB),
            width: 3.0),
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
        gradient: widget.active
            ? RadialGradient(
                colors: [
                  const Color(0xffa5b3fa), // blue sky
                  const Color(0xff557EFF), // yellow sun
                ],
                radius: 0.4,
                stops: [0.2, 1.0],
              )
            : RadialGradient(
                colors: [
                  const Color(0xffE5EEFD), // yellow sun
                  const Color(0xffffffff), // blue sky
                ],
                radius: 0.55,
                stops: [0.6, 1.0],
              ),
      ),
      child: Material(
        type: MaterialType.transparency,
        color: Colors.transparent,
        child: InkWell(
          customBorder: new CircleBorder(),
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(widget.padding),
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Icon(
              widget.icon,
              size: widget.size,
              color: widget.active ? Colors.white : lightTheme.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
