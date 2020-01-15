import 'package:connect4/providers/gamestate.dart';
import 'package:connect4/widgets/game_app_bar.dart';
import 'package:connect4/widgets/gameboard.dart';
import 'package:connect4/widgets/info.dart';
import 'package:connect4/widgets/new_game_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
    @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final GameState gameState = Provider.of<GameState>(context);
    final String args = ModalRoute.of(context).settings.arguments;

    // return Consumer<GameState>(
    //   builder: (context, gameState, child) {
        return Scaffold(
          appBar: GameAppBar(appBarText: "Connect 4"),
          body: OrientationBuilder(
            builder: (context, orientation) {
              return Container(
                padding: const EdgeInsets.all(16),
                child: _buildContainer(orientation, gameState),
              );
            }
          ),
        );
    //   }
    // );
  }

  Widget _buildContainer(Orientation orientation, GameState gameState) {
    List<Widget> content = <Widget>[
      Container(
        width: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Info(),
            NewGameButton(),
          ],
        ),
      ),
      Gameboard(),
    ];

    if (orientation == Orientation.portrait) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: content,
      );
    } else {
      return Row(
        children: content,
      );
    }
  }
}