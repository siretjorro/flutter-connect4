import 'package:connect4/providers/gamestate.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:provider/provider.dart';

class Info extends StatefulWidget {
  @override
    _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    final GameState gameState = Provider.of<GameState>(context);

    return Text(_getText(gameState),
      style: TextStyle(
        fontSize: 60,
        foreground: Paint()
          ..shader = ui.Gradient.linear(
            const Offset(0, 20),
            const Offset(300, 20),
            <Color>[
              Colors.red,
              Colors.yellow,
            ],
          ),
      ),
    );
  }

  String _getText(GameState gameState) {
    String _currentPlayerText = gameState.currentPlayer == 1 ? 'Red' : 'Yellow';

    if (gameState.over) {
      _currentPlayerText = _currentPlayerText + ' won!';
    } else {
      _currentPlayerText = _currentPlayerText + "'s turn!";
    }

    return _currentPlayerText;
  }
}