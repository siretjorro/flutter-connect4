import 'package:connect4/providers/gamestate.dart';
import 'package:flutter/material.dart';
import 'package:nice_button/nice_button.dart';
import 'package:provider/provider.dart';

class NewGameButton extends StatefulWidget {
  @override
    _NewGameButtonState createState() => _NewGameButtonState();
}

class _NewGameButtonState extends State<NewGameButton> {
  @override
  Widget build(BuildContext context) {
    GameState gameState = Provider.of(context);
    
    return NiceButton(
      background: Colors.white,
      radius: 40,
      text: "NEW GAME",
      gradientColors: [Colors.red, Colors.yellow],
      onPressed: () {
        gameState.newGame();
      },
    );
  }
  
}