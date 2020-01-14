import 'package:connect4/widgets/game_app_bar.dart';
import 'package:connect4/widgets/start_one_player_button.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
    @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  var firstColor = Color(0xff5b86e5), secondColor = Color(0xff36d1dc);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: GameAppBar(appBarText: "Start game"),
      body: Container(
        padding: EdgeInsets.only(top: 200, bottom: 200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            StartOnePlayerButton(buttonText: "2 PLAYERS"),
            StartOnePlayerButton(buttonText: "PLAY AGAINST AI"),
          ],
        ),
      ),
    );
  }
}