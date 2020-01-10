import 'package:flutter/material.dart';
import 'package:nice_button/nice_button.dart';

class MainScreen extends StatefulWidget {
    @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
            _buildGameBoard(),
            _buildStats()
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: Text('Connect 4'),
    );
  }

  Widget _buildStats() {
    return Column(
      children: <Widget>[
        Text('Connect 4')
      ],
    );
  }

  Widget _buildGameBoard() {
    return Column(
      children: <Widget>[ 
        for(var i = 0; i < 6; i++)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              for(var j = 0; i < 7; j++)
                ButtonTheme(
                  minWidth: 30,
                  height: 30,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(""),
                  ),
                ),
              ],
            ),
      ], 
    );
  }
  
}