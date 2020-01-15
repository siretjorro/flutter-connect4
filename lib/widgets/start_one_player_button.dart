import 'package:flutter/material.dart';
import 'package:nice_button/nice_button.dart';

class StartOnePlayerButton extends StatelessWidget {
  final String buttonText;

  StartOnePlayerButton({@required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return NiceButton(
      background: Colors.white,
      radius: 40,
      text: buttonText,
      gradientColors: [Colors.yellow, Colors.red, Colors.yellow],
      onPressed: () {
        Navigator.pushNamed(context, "/main", arguments: this.buttonText);
      },
    );
  }
}