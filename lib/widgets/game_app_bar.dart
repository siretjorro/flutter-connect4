import 'package:flutter/material.dart';

class GameAppBar extends StatelessWidget with PreferredSizeWidget {
  final String appBarText;

  GameAppBar({@required this.appBarText});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.orange,
      title: Text(appBarText),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}