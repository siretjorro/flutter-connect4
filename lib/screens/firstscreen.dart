import 'package:connect4/widgets/game_app_bar.dart';
import 'package:connect4/widgets/start_one_player_button.dart';
import 'package:flutter/material.dart';
import 'package:connect4/enums/constants.dart' as Constants;

class FirstScreen extends StatefulWidget {
    @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  var firstColor = Color(0xff5b86e5), secondColor = Color(0xff36d1dc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GameAppBar(appBarText: Constants.START_GAME),
      body: Container(
        padding: EdgeInsets.only(top: 200, bottom: 200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            StartOnePlayerButton(buttonText: Constants.TWO_PLAYERS),
            StartOnePlayerButton(buttonText: Constants.ONE_PLAYER),
          ],
        ),
      ),
    );
  }
}