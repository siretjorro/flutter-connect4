import 'package:connect4/providers/gamestate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Gameboard extends StatefulWidget {
  @override
   _GameboardState createState() => _GameboardState();
}

class _GameboardState extends State<Gameboard> {
  @override
  Widget build(BuildContext context) {
    final GameState gameState = Provider.of<GameState>(context);

    return Column(
      children: <Widget>[ 
        for(var i = 0; i < 6; i++)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              for(var j = 0; j < 7; j++)
                ButtonTheme(
                  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  buttonColor: _getTileColor(gameState, i, j),
                  minWidth: 45,
                  height: 45,
                  child: RaisedButton(
                    onPressed: () {if (!gameState.over) {gameState.makeMove(i, j);}},
                    child: Text(''),
                 ),
                ),
            ],
          ),
      ], 
    );
  }

  Color _getTileColor(GameState gameState, int i, int j) {
    int tile = gameState.gameState[i][j];

    switch (tile) {
      case 1: {
        return Colors.red;
      }
      break;

      case 2: {
        return Colors.yellow;
      }
      break;

      default: {
        return Colors.grey[200];
      }
      break;
    }
  }
  
}