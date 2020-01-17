import 'package:flutter/material.dart';
import 'package:musix/utils/theme.dart';
import 'package:musix/button.dart';

class ListItem3d extends StatefulWidget {
  ListItem3d({Key key, this.songName, this.singers, this.active})
      : super(key: key);
  final String songName;
  final String singers;
  final bool active;
  @override
  _ListItem3dState createState() => _ListItem3dState();
}

class _ListItem3dState extends State<ListItem3d> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.songName,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff7888A0),
                  ),
                ),
                Text(
                  widget.singers,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xffa2a4a8),
                  ),
                ),
              ],
            ),
          ),
          Button3d(
            icon: widget.active ? Icons.pause : Icons.play_arrow,
            padding: 10,
            active: widget.active,
          )
        ],
      ),
      decoration: BoxDecoration(
        // border: Border.all(color: Color(0xffc8d3e8)),

        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: widget.active ? Color(0xffd1dcf0) : null,
      ),
    );
  }
}
