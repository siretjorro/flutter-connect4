import 'package:connect4/providers/gamestate.dart';

class Ai {

  void pureMC(pos, int n):
    my_side = pos["to_move"]
    initial_moves = moves(pos)
    win_counts = dict((move, 0) for move in initial_moves)
    # print('Initial moves: ' + str(initial_moves))

    for move in initial_moves:
        for i in range(N):
            res = simulate(pos, move, my_side)
            if res == 'w':
                win_counts[move] += 1
            elif res == 'd':
                win_counts[move] += 0.5

    # print('Win counts: ' + str(win_counts))

    # win_per = dict((move, 0) for move in initial_moves)

    # for move in win_per.keys():
    #     win_per[move] = (win_counts[move]/200)*100
    
    # print('Win percentages: ' + str(win_per))

    return max(win_counts, key = win_counts.get)

  
}