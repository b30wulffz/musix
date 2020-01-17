import 'package:flutter/material.dart';
import 'package:flute_music_player/flute_music_player.dart';
import 'package:musix/listitem.dart';

class SongsFinder extends StatefulWidget {
  @override
  _SongsFinderState createState() => _SongsFinderState();
}

class _SongsFinderState extends State<SongsFinder> {
  List<Song> _songs = [];
  var isLoading = true;

  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  void initPlayer() async {
    setState(() {
      isLoading = true;
    });
    var songs = await MusicFinder.allSongs();
    songs = new List<Song>.from(songs);

    setState(() {
      isLoading = false;
      _songs = songs;
      print(songs.length.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? new Center(
            child: new Column(
              children: <Widget>[
                new CircularProgressIndicator(),
                new Text("Loading Songs"),
              ],
            ),
          )
        : ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: _songs.length,
            itemBuilder: (BuildContext context, int index) {
              return ListItem3d(
                active: false,
                songName: _songs[index].title,
                singers: _songs[index].artist == "<unknown>"
                    ? "Unknown Artist"
                    : _songs[index].artist,
              );
            },
          );
  }
}
