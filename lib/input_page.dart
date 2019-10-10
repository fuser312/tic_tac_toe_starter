import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/planetKiller.jpg"),
              fit: BoxFit.cover,
          ),
        ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(

                ),
              ),
              Expanded(
                flex: 2,
                child: Text("Tic-Tac-Toe", style: TextStyle(
                  fontSize: 40,
                  fontFamily: "Nunito",
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                flex: 1,
                child: Text("Player X to Move", style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new ReusableBox(),
                          new ReusableBox(),
                          new ReusableBox(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new ReusableBox(),
                        new ReusableBox(),
                        new ReusableBox()
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        new ReusableBox(),
                        new ReusableBox(),
                        new ReusableBox()
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(60, 8, 60, 8),
                  child: Card(
                    color: Colors.blue.withOpacity(0.5),
                    child: FlatButton(
                      child: Text("Reset", style: TextStyle(fontSize: 24, color: Colors.white),),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(

                ),
              )
            ],
          ),
        ),

    );
  }
}

class ReusableBox extends StatelessWidget {
  final Color color;
  final Widget child;
  ReusableBox({this.color = const Color(0xFF1e55bc), this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      color : Colors.blue.withOpacity(0.5),
      child: SizedBox(
        height: 72,
        width: 64,
      ),
    );
  }
}
