import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        title: Text("Drum Beats"),
      ),
      body: DrumBody(),
    );
  }
}

class DrumBody extends StatefulWidget {
  @override
  _DrumBodyState createState() => _DrumBodyState();
}

class _DrumBodyState extends State<DrumBody> {
  Widget DrumKey({BeatName: String}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: FlatButton(
        padding: EdgeInsets.all(16.0),
        child: Text(BeatName),
        color: Colors.white,
        onPressed: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DrumKey(
              BeatName: "Crash",
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DrumKey(
              BeatName: "High Tom",
            ),
            DrumKey(
              BeatName: "Med Tom",
            ),
            DrumKey(
              BeatName: "Low Tom",
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DrumKey(
              BeatName: "Open Hih",
            ),
            DrumKey(
              BeatName: "Closed Hih",
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DrumKey(
              BeatName: "Snare",
            ),
            DrumKey(
              BeatName: "Kick",
            ),
          ],
        ),
      ],
    );
  }
}
