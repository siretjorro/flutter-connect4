import 'package:flutter/material.dart';
import 'package:nice_button/nice_button.dart';

class FirstScreen extends StatefulWidget {
    @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  var firstColor = Color(0xff5b86e5), secondColor = Color(0xff36d1dc);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: _buildAppBar(),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            NiceButton(
              radius: 40,
              text: "PLAY",
              gradientColors: [secondColor, firstColor],
              onPressed: () {Navigator.pushNamed(context, '/main');},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: Text('Start game'),
    );
  }
  
}