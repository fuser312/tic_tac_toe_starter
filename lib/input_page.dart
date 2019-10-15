import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color normalColor = Colors.blue.withOpacity(0.5);
Color winningColor = Colors.purple.withOpacity(0.5);
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String currentPlayer = "X";
  String move = "Player X to move";





  Icon player1 = Icon(Icons.close, size: 56, color: Colors.white,);
  Icon player2 = Icon(FontAwesomeIcons.circle, size: 56, color: Colors.white,);
  List<List<Icon>> board = [
    [null, null, null],
    [null, null, null],
    [null, null, null]
  ];

  void updateBoard(newBoard){
    if((newBoard[0][0] == player1 && newBoard[0][1] == player1 && newBoard[0][2] == player1)
    || newBoard[0][0] == player1 && newBoard[1][0] == player1 && newBoard[2][0] == player1
    || newBoard[2][0] == player1 && newBoard[2][1] == player1 && newBoard[2][2] == player1
    || newBoard[0][2] == player1 && newBoard[1][2] == player1 && newBoard[2][2] == player1
    || newBoard[0][0] == player1 && newBoard[1][1] == player1 && newBoard[2][2] == player1){
      move = "Congratulations X Won!";
    }

    else if((newBoard[0][0] == player2 && newBoard[0][1] == player2 && newBoard[0][2] == player2)
        || newBoard[0][0] == player2 && newBoard[1][0] == player2 && newBoard[2][0] == player2
        || newBoard[2][0] == player2 && newBoard[2][1] == player2 && newBoard[2][2] == player2
        || newBoard[0][2] == player2 && newBoard[1][2] == player2 && newBoard[2][2] == player2
        || newBoard[0][0] == player2 && newBoard[1][1] == player2 && newBoard[2][2] == player2){
      move = "Congratulations O Won!";
    }

    else if(newBoard[0][0]!=null && newBoard[0][1]!=null && newBoard[0][2]!=null && newBoard[1][0]!=null && newBoard[1][1]!=null && newBoard[1][2]!=null && newBoard[2][0]!=null && newBoard[2][1]!=null && newBoard[2][2]!=null ){
      move = "Its a Draw.";
    }

  }

  List winningCells(){
   List winningBoard = [];
   if(board[0][0] == player1 && board[0][1] == player1 && board[0][2] == player1){
     winningBoard = [board[0][0], board[0][1], board[0][2]];
     normalColor = winningColor;
   }
   else if(board[0][0] == player1 && board[1][0] == player1 && board[2][0] == player1){
     winningBoard = [board[0][0], board[1][0], board[2][0]];
     normalColor = winningColor;
   }
   else if(board[2][0] == player1 && board[2][1] == player1 && board[2][2] == player1){
     winningBoard = [board[2][0], board[2][1], board[2][2]];
     normalColor = winningColor;
   }
   else if(board[0][2] == player1 && board[1][2] == player1 && board[2][2] == player1){
     winningBoard = [board[2][0], board[2][1], board[2][2]];
     normalColor = winningColor;
   }
   else if(board[0][0] == player1 && board[1][1] == player1 && board[2][2] == player1){
     winningBoard = [board[0][0], board[1][1], board[2][2]];
     normalColor = winningColor;
   }
   else if(board[0][0] == player2 && board[0][1] == player2 && board[0][2] == player2){
     winningBoard = [board[0][0], board[0][1], board[0][2]];
     normalColor = winningColor;
   }
   else if(board[0][0] == player2 && board[1][0] == player2 && board[2][0] == player2){
     winningBoard = [board[0][0], board[1][0], board[2][0]];
     normalColor = winningColor;
   }
   else if(board[2][0] == player2 && board[2][1] == player2 && board[2][2] == player2){
     winningBoard = [board[2][0], board[2][1], board[2][2]];
     normalColor = winningColor;
   }
   else if(board[0][2] == player2 && board[1][2] == player2 && board[2][2] == player2){
     winningBoard = [board[2][0], board[2][1], board[2][2]];
     normalColor = winningColor;
   }
   else if(board[0][0] == player2 && board[1][1] == player2 && board[2][2] == player2){
     winningBoard = [board[0][0], board[1][1], board[2][2]];
     normalColor = winningColor;
   }
   return winningBoard;
  }


  Icon playerIcon = null;


  void updatePlayerWithIcon(String x) {
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
                child: Text("$move", style: TextStyle(
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

                          ReusableBox(
                              tapCallBack: (){
                                playerMove(0, 0);
                                updateBoard(board);
                                //checkWinningBoard();
                              },
                              child:board[0][0]
                            ),

                          ReusableBox(
                              tapCallBack: (){
                                playerMove(0, 1);
                                updateBoard(board);
                                //checkWinningBoard();
                              },
                              child:board[0][1]
                          ),
                          ReusableBox(
                              tapCallBack: (){
                                playerMove(0, 2);
                                updateBoard(board);
                                //checkWinningBoard();
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
                        ReusableBox(
                            tapCallBack: (){
                              playerMove(1, 0);
                              updateBoard(board);
                              //checkWinningBoard();
                            },
                            child:board[1][0]
                        ),
                        ReusableBox(
                            tapCallBack: (){
                              playerMove(1, 1);
                              updateBoard(board);
                              //checkWinningBoard();
                            },
                            child:board[1][1]
                        ),
                        ReusableBox(
                            tapCallBack: (){
                              playerMove(1, 2);
                              updateBoard(board);
                              //checkWinningBoard();
                            },
                            child:board[1][2]
                        ),
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
                        ReusableBox(
                            tapCallBack: (){
                              playerMove(2, 0);
                              updateBoard(board);
                              //checkWinningBoard();
                            },
                            child:board[2][0]
                        ),
                        ReusableBox(
                            tapCallBack: (){
                              playerMove(2, 1);
                              updateBoard(board);
                              //checkWinningBoard();
                            },
                            child:board[2][1]
                        ),
                        ReusableBox(
                            tapCallBack: (){
                              playerMove(2, 2);
                              updateBoard(board);
                              //checkWinningBoard();
                            },
                            child:board[2][2]
                        ),
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
                      child: Text(
                        "Reset", style: TextStyle(
                          fontSize: 24, color: Colors.white
                      ),
                      ),
                      onPressed: (){
                        setState(() {
                          board = [
                            [null, null, null],
                            [null, null, null],
                            [null, null, null]
                          ];
                        });
                      },
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

  void playerMove(int a, int b) {
    if (board[a][b]!= null){
      print("Why?");
    }
    else if (board[a][b] == null) {
      setState(() {
        if(currentPlayer == "X"){
          move = "Player O to move";
          board[a][b] = player1;
          currentPlayer = "O";
        }
        else if(currentPlayer == "O") {
          move = "Player X to move";
          board[a][b] = player2;
          currentPlayer = "X";
        }
      });
    }
  }
}

class ReusableBox extends StatelessWidget {
  Color color;
  final Widget child;
  final Function tapCallBack;
  ReusableBox( {this.color, this.child, this.tapCallBack,});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapCallBack,
      child: Container(
        color :  normalColor,
        child: SizedBox(
          height: 72,
          width: 64,
          child: AnimatedOpacity(duration: Duration(milliseconds: 600),
              opacity: child == null ? 0.0: 1.0,child: child),
        ),
      ),
    );
  }
}


