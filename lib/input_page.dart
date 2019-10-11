import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String currentPlayer = "X";
  Icon player1 = Icon(Icons.close, size: 56, color: Colors.white,);
  Icon player2 = Icon(FontAwesomeIcons.circle, size: 56, color: Colors.white,);
  List<List<Icon>> board = [
    [null, null, null],
    [null, null, null],
    [null, null, null]
  ];

  Icon playerIcon = null;

  void updatePlayerWithIcon(String x) {
    // simple function to update icon and also change value of current player
    if (x == "X") {
      currentPlayer = "O";
      playerIcon = player1;
    } else if (x == "O") {
      playerIcon = player2;
      currentPlayer = "X";
    }
  }

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
                          new ReusableBox(
                            tapCallBack: (){
                              setState(() {
                                if(currentPlayer == "X"){
                                  board[0][0] = player1;
                                  currentPlayer = "O";
                                }
                                else if(currentPlayer == "O") {
                                  board[0][0] = player2;
                                  currentPlayer = "X";
                                }
                              });
                            },
                            child:board[0][0]
                          ),
                          new ReusableBox(
                              tapCallBack: (){
                                setState(() {
                                  if(currentPlayer == "X"){
                                    board[0][1] = player1;
                                    currentPlayer = "O";
                                  }
                                  else if(currentPlayer == "O") {
                                    board[0][1] = player2;
                                    currentPlayer = "X";
                                  }
                                });
                              },
                              child:board[0][1]
                          ),
                          new ReusableBox(
                              tapCallBack: (){
                                setState(() {
                                  if(currentPlayer == "X"){
                                    board[0][2] = player1;
                                    currentPlayer = "O";
                                  }
                                  else if(currentPlayer == "O") {
                                    board[0][2] = player2;
                                    currentPlayer = "X";
                                  }
                                });
                              },
                              child:board[0][2]
                          ),
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
                        new ReusableBox(
                            tapCallBack: (){
                              setState(() {
                                if(currentPlayer == "X"){
                                  board[1][0] = player1;
                                  currentPlayer = "O";
                                }
                                else if(currentPlayer == "O") {
                                  board[1][0] = player2;
                                  currentPlayer = "X";
                                }
                              });
                            },
                            child:board[1][0]
                        ),
                        new ReusableBox(
                            tapCallBack: (){
                              setState(() {
                                if(currentPlayer == "X"){
                                  board[1][1] = player1;
                                  currentPlayer = "O";
                                }
                                else if(currentPlayer == "O") {
                                  board[1][1] = player2;
                                  currentPlayer = "X";
                                }
                              });
                            },
                            child:board[1][1]
                        ),
                        new ReusableBox(
                            tapCallBack: (){
                              setState(() {
                                if(currentPlayer == "X"){
                                  board[1][2] = player1;
                                  currentPlayer = "O";
                                }
                                else if(currentPlayer == "O") {
                                  board[1][2] = player2;
                                  currentPlayer = "X";
                                }
                              });
                            },
                            child:board[1][2]
                        )
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
                        new ReusableBox(
                            tapCallBack: (){
                              setState(() {
                                if(currentPlayer == "X"){
                                  board[2][0] = player1;
                                  currentPlayer = "O";
                                }
                                else if(currentPlayer == "O") {
                                  board[2][0] = player2;
                                  currentPlayer = "X";
                                }
                              });
                            },
                            child:board[2][0]
                        ),
                        new ReusableBox(
                            tapCallBack: (){
                              setState(() {
                                if(currentPlayer == "X"){
                                  board[2][1] = player1;
                                  currentPlayer = "O";
                                }
                                else if(currentPlayer == "O") {
                                  board[2][1] = player2;
                                  currentPlayer = "X";
                                }
                              });
                            },
                            child:board[2][1]
                        ),
                        new ReusableBox(
                            tapCallBack: (){
                              setState(() {
                                if(currentPlayer == "X"){
                                  board[2][2] = player1;
                                  currentPlayer = "O";
                                }
                                else if(currentPlayer == "O") {
                                  board[2][2] = player2;
                                  currentPlayer = "X";
                                }
                              });
                            },
                            child:board[2][2]
                        )
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
  final Function tapCallBack;
  ReusableBox( {this.color = const Color(0xFF1e55bc), this.child, this.tapCallBack,});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapCallBack,
      child: Container(
        color : Colors.blue.withOpacity(0.5),
        child: SizedBox(
          height: 72,
          width: 64,
          child: child,
        ),
      ),
    );
  }
}
