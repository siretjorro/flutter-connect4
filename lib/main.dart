import 'package:connect4/screens/firstscreen.dart';
import 'package:connect4/screens/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/gamestate.dart';

void main() {
  runApp(
    ChangeNotifierProvider<GameState>(
      create: (_) => GameState(),
      child: MaterialApp(
        title: "Navigation",
        initialRoute: "/",
        routes: {
          "/": (context) => FirstScreen(),
          "/main": (context) => MainScreen()
        },
      ),
    ),
  );
}
