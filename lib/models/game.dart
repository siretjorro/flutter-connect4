class Game {
  List<List<int>> gameState = List();
  int currentPlayer;
  bool over;

  Game() {
    emptyGameboard();
  }

  void emptyGameboard() {
    gameState = List();

    for (int i = 0; i < 6; i++) {
      List<int> row = List();

      for (int j = 0; j < 7; j++) {
        row.add(0);
      }

      gameState.add(row);
    }

    currentPlayer = 1;
    over = false;
  }

  void makeMove(int i, int j) {
    if (gameState[i][j] == 0 && i < 5 && gameState[i+1][j] != 0 || i == 5 && gameState[i][j] == 0) {
      gameState[i][j] = currentPlayer;
      bool won = isWon();

      if (!won) {
        currentPlayer = currentPlayer == 1 ? 2 : 1;
      }
    }
  }

  bool isWon() {
    final int maxx = 6;
    final int maxy = 7;

    List<List<int>> directions = [[1,0], [1,-1], [1,1], [0,1]];
    for (List<int> d in directions) {
      int dx = d[0];
      int dy = d[1];

      for (int x = 0; x < maxx; x++) {
        for (int y = 0; y < maxy; y++) {
            int lastx = x + 3*dx;
            int lasty = y + 3*dy;
            if (0 <= lastx && lastx < maxx && 0 <= lasty && lasty < maxy) {
              int w = gameState[x][y];
              if (w != 0 && w == gameState[x+dx][y+dy] 
                    && w == gameState[x+2*dx][y+2*dy] 
                    && w == gameState[lastx][lasty]) {
                      over = true;
                      return true;
              }
            }
        }
      }
    }

    return false;
  }
}