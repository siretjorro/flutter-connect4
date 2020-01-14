import 'package:connect4/models/ai.dart';
import 'package:connect4/models/game.dart';
import 'package:flutter/foundation.dart';

class GameState with ChangeNotifier {
  final Game _game = Game();
  final Ai _ai = Ai();

  int get currentPlayer => _game.currentPlayer;
  bool get over => _game.over;
  List<List<int>> get gameState => _game.gameState;

  void newGame() {
    _game.emptyGameboard();
    notifyListeners();
  }

  void makeMove(int i, int j) {
    _game.makeMove(i, j);
    notifyListeners();
  }
}