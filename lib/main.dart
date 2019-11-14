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
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
              color: Colors.white,
              child: Text("Beat 1"),
              onPressed: () {},
            ),
            FlatButton(
              color: Colors.white,
              child: Text("Beat 2"),
              onPressed: () {},
            ),
            FlatButton(
              color: Colors.white,
              child: Text("Beat 3"),
              onPressed: () {},
            ),
            FlatButton(
              color: Colors.white,
              child: Text("Beat 4"),
              onPressed: () {},
            )
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
              color: Colors.white,
              child: Text("Beat 1"),
              onPressed: () {},
            ),
            FlatButton(
              color: Colors.white,
              child: Text("Beat 2"),
              onPressed: () {},
            ),
            FlatButton(
              color: Colors.white,
              child: Text("Beat 3"),
              onPressed: () {},
            ),
            FlatButton(
              color: Colors.white,
              child: Text("Beat 4"),
              onPressed: () {},
            )
          ],
        ),
      ],
    );
  }
}
