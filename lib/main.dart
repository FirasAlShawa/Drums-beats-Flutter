import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
      ),
    );

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Beats"),
      ),
      body: Drum(),
    );
  }
}

class Drum extends StatelessWidget {
  void beatPlayer({fileName: int}) {
    final player = AudioCache();
    player.play("beat$fileName.wav");
  }

  Widget drumKey({color: Color, BeatNum: int}) {
    return Container(
      child: Expanded(
        child: FlatButton(
          padding: EdgeInsets.all(32.0),
          color: color,
          onPressed: () {
            beatPlayer(fileName: BeatNum);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          children: <Widget>[
            drumKey(
              color: Colors.red.shade300,
              BeatNum: 1,
            ),
            drumKey(
              color: Colors.green.shade300,
              BeatNum: 2,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            drumKey(
              color: Colors.blue.shade300,
              BeatNum: 3,
            ),
            drumKey(
              color: Colors.purple.shade300,
              BeatNum: 4,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            drumKey(
              color: Colors.yellow.shade300,
              BeatNum: 5,
            ),
            drumKey(
              color: Colors.orange.shade300,
              BeatNum: 6,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            drumKey(
              color: Colors.teal.shade300,
              BeatNum: 7,
            ),
            drumKey(
              color: Colors.blueGrey.shade300,
              BeatNum: 8,
            ),
          ],
        ),
      ],
    );
  }
}
