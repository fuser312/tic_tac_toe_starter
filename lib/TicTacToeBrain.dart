import 'dart:io';

void main() {
  List<List<String>> board = createBoard();
  printBoard(board);
  String currentPlayer = '';
  print(board);

  while (true) {
    print('$currentPlayer\'s move');
    String userChoice = stdin.readLineSync();
    int row = getRow(userChoice);
    int column = getColumn(userChoice);
    if (!validate(row, column, board)) {
      print('Invalid Move');
      continue;
    }
    board[row][column] = currentPlayer;
    printBoard(board);
    if (checkWinner(board, currentPlayer)) {
      exit(0);
    }

    if (currentPlayer == 'X') {
      currentPlayer = 'O';
    } else {
      currentPlayer = 'X';
    }
  }
}

List<List<String>> createBoard() {
  int boardSize = 3;
  return List.generate(boardSize, (_) => List.filled(boardSize, ' '));
}

bool validate(int row, int column, List<List<String>> board) {
  return board[row][column] == ' ';
}

int getColumn(String userInput) => ['A', 'B', 'C'].indexOf(userInput[0]);

int getRow(String userInput) => ['1', '2', '3'].indexOf(userInput[1]);

void printBoard(List<List<String>> board) {
  print('   A   B   C ');
  List<String> rows = board.map(rowToString).toList();
  print('1 ${rows[0]}');
  print('  ---+---+---');
  print('2 ${rows[1]}');
  print('  ---+---+---');
  print('3 ${rows[2]}');
}

String rowToString(List<String> row) {
  return row.map((String val) => ' $val ').join('|');
}

bool checkWinner(List<List<String>> board, String x) {
  if (board[0][0] == x && board[0][1] == x && board[0][2] == x) {
    print("$x won");
    return true;
  } else if (board[1][0] == x && board[1][1] == x && board[1][2] == x) {
    print("$x won");
    return true;
  } else if (board[2][0] == x && board[2][1] == x && board[2][2] == x) {
    print("$x won");
    return true;
  } else if (board[0][0] == x && board[1][0] == x && board[2][0] == x) {
    print("$x won");
    return true;
  } else if (board[0][1] == x && board[1][1] == x && board[2][1] == x) {
    print("$x won");
    return true;
  } else if (board[0][2] == x && board[1][2] == x && board[2][2] == x) {
    print("$x won");
    return true;
  } else if (board[0][0] == x && board[1][1] == x && board[2][2] == x) {
    print("$x won");
    return true;
  } else if (board[0][2] == x && board[1][1] == x && board[2][0] == x) {
    print("$x won");
    return true;
  } else {
    return false;
  }
}