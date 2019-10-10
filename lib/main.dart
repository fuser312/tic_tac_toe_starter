import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(MaterialApp(
    home: TicTacToePage(),
  ));
}

class TicTacToePage extends StatefulWidget {
  @override
  _TicTacToePageState createState() => _TicTacToePageState();
}

class _TicTacToePageState extends State<TicTacToePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: InputPage(),
        //theme: ThemeData.dark().copyWith(
          //primaryColor: Color(0xFF0A0D20),

          ///accentColor: Color(0xCEA1556),

    );
  }
}
