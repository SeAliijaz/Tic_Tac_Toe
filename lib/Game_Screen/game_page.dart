import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  ///Boxes
  String box1 = '';
  String box2 = '';
  String box3 = '';
  String box4 = '';
  String box5 = '';
  String box6 = '';
  String box7 = '';
  String box8 = '';
  String box9 = '';

  ///Player 1 as 'X'
  int playerX = 0;

  ///Player 2 as 'O'
  int playerO = 0;

  ///To play
  int inPlay = 1;

  ///Finish
  bool gameEnd = false;

  ///Checking win method
  void checkWin() {
    if (box1 == box2 && box1 == box3 && box1.isNotEmpty) {
      if (box1 == 'X') {
        gameEnd = true;
        playerX++;
      } else {
        gameEnd = true;
        playerO++;
      }
    }
    if (box4 == box5 && box4 == box6 && box4.isNotEmpty) {
      if (box4 == 'X') {
        gameEnd = true;
        playerX++;
      } else {
        gameEnd = true;
        playerO++;
      }
    }
    if (box7 == box8 && box7 == box9 && box7.isNotEmpty) {
      if (box7 == 'X') {
        gameEnd = true;
        playerX++;
      } else {
        gameEnd = true;
        playerO++;
      }
    }
    if (box1 == box4 && box1 == box7 && box1.isNotEmpty) {
      if (box1 == 'X') {
        gameEnd = true;
        playerX++;
      } else {
        gameEnd = true;
        playerO++;
      }
    }
    if (box2 == box5 && box2 == box8 && box2.isNotEmpty) {
      if (box2 == 'X') {
        gameEnd = true;
        playerX++;
      } else {
        gameEnd = true;
        playerO++;
      }
    }
    if (box3 == box6 && box3 == box9 && box3.isNotEmpty) {
      if (box3 == 'X') {
        gameEnd = true;
        playerX++;
      } else {
        gameEnd = true;
        playerO++;
      }
    }
    if (box1 == box5 && box1 == box9 && box1.isNotEmpty) {
      if (box1 == 'X') {
        gameEnd = true;
        playerX++;
      } else {
        gameEnd = true;
        playerO++;
      }
    }
    if (box3 == box5 && box3 == box7 && box3.isNotEmpty) {
      if (box3 == 'X') {
        gameEnd = true;
        playerX++;
      } else {
        gameEnd = true;
        playerO++;
      }
    }
  }

  ///Reset Game method
  void resetGame() {
    setState(() {
      gameEnd = false;
      inPlay = 1;
      box1 = '';
      box2 = '';
      box3 = '';
      box4 = '';
      box5 = '';
      box6 = '';
      box7 = '';
      box8 = '';
      box9 = '';
    });
  }

  void resetAllGame() {
    setState(() {
      gameEnd = false;
      playerX = 0;
      playerO = 0;
      inPlay = 1;
      box1 = '';
      box2 = '';
      box3 = '';
      box4 = '';
      box5 = '';
      box6 = '';
      box7 = '';
      box8 = '';
      box9 = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/tic_tac_toe.png',
                height: 200,
              ),

              Container(
                height: s.width,
                width: s.width,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.1),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(5),
                              child: MaterialButton(
                                height: double.infinity,
                                color: Colors.blue,
                                onPressed: () {
                                  setState(() {
                                    if (box1.isEmpty && gameEnd == false) {
                                      if (inPlay == 1) {
                                        box1 = 'X';
                                        inPlay *= -1;
                                      } else {
                                        box1 = 'O';
                                        inPlay *= -1;
                                      }
                                      checkWin();
                                    }
                                  });
                                },
                                child: Text(
                                  box1,
                                  style: TextStyle(
                                    fontSize: 80,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(5),
                              child: MaterialButton(
                                height: double.infinity,
                                color: Colors.blue,
                                onPressed: () {
                                  setState(() {
                                    if (box2.isEmpty && gameEnd == false) {
                                      if (inPlay == 1) {
                                        box2 = 'X';
                                        inPlay *= -1;
                                      } else {
                                        box2 = 'O';
                                        inPlay *= -1;
                                      }
                                      checkWin();
                                    }
                                  });
                                },
                                child: Text(
                                  box2,
                                  style: TextStyle(
                                    fontSize: 80,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(5),
                              child: MaterialButton(
                                height: double.infinity,
                                color: Colors.blue,
                                onPressed: () {
                                  setState(() {
                                    if (box3.isEmpty && gameEnd == false) {
                                      if (inPlay == 1) {
                                        box3 = 'X';
                                        inPlay *= -1;
                                      } else {
                                        box3 = 'O';
                                        inPlay *= -1;
                                      }
                                      checkWin();
                                    }
                                  });
                                },
                                child: Text(
                                  box3,
                                  style: TextStyle(
                                    fontSize: 80,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(5),
                              child: MaterialButton(
                                height: double.infinity,
                                color: Colors.blue,
                                onPressed: () {
                                  setState(() {
                                    if (box4.isEmpty && gameEnd == false) {
                                      if (inPlay == 1) {
                                        box4 = 'X';
                                        inPlay *= -1;
                                      } else {
                                        box4 = 'O';
                                        inPlay *= -1;
                                      }
                                      checkWin();
                                    }
                                  });
                                },
                                child: Text(
                                  box4,
                                  style: TextStyle(
                                    fontSize: 80,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(5),
                              child: MaterialButton(
                                height: double.infinity,
                                color: Colors.blue,
                                onPressed: () {
                                  setState(() {
                                    if (box5.isEmpty && gameEnd == false) {
                                      if (inPlay == 1) {
                                        box5 = 'X';
                                        inPlay *= -1;
                                      } else {
                                        box5 = 'O';
                                        inPlay *= -1;
                                      }
                                      checkWin();
                                    }
                                  });
                                },
                                child: Text(
                                  box5,
                                  style: TextStyle(
                                    fontSize: 80,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(5),
                              child: MaterialButton(
                                height: double.infinity,
                                color: Colors.blue,
                                onPressed: () {
                                  setState(() {
                                    if (box6.isEmpty && gameEnd == false) {
                                      if (inPlay == 1) {
                                        box6 = 'X';
                                        inPlay *= -1;
                                      } else {
                                        box6 = 'O';
                                        inPlay *= -1;
                                      }
                                      checkWin();
                                    }
                                  });
                                },
                                child: Text(
                                  box6,
                                  style: TextStyle(
                                    fontSize: 80,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(5),
                              child: MaterialButton(
                                height: double.infinity,
                                color: Colors.blue,
                                onPressed: () {
                                  setState(() {
                                    if (box7.isEmpty && gameEnd == false) {
                                      if (inPlay == 1) {
                                        box7 = 'X';
                                        inPlay *= -1;
                                      } else {
                                        box7 = 'O';
                                        inPlay *= -1;
                                      }
                                      checkWin();
                                    }
                                  });
                                },
                                child: Text(
                                  box7,
                                  style: TextStyle(
                                    fontSize: 80,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(5),
                              child: MaterialButton(
                                height: double.infinity,
                                color: Colors.blue,
                                onPressed: () {
                                  setState(() {
                                    if (box8.isEmpty && gameEnd == false) {
                                      if (inPlay == 1) {
                                        box8 = 'X';
                                        inPlay *= -1;
                                      } else {
                                        box8 = 'O';
                                        inPlay *= -1;
                                      }
                                      checkWin();
                                    }
                                  });
                                },
                                child: Text(
                                  box8,
                                  style: TextStyle(
                                    fontSize: 80,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(5),
                              child: MaterialButton(
                                height: double.infinity,
                                color: Colors.blue,
                                onPressed: () {
                                  setState(() {
                                    if (box9.isEmpty && gameEnd == false) {
                                      if (inPlay == 1) {
                                        box9 = 'X';
                                        inPlay *= -1;
                                      } else {
                                        box9 = 'O';
                                        inPlay *= -1;
                                      }
                                      checkWin();
                                    }
                                  });
                                },
                                child: Text(
                                  box9,
                                  style: TextStyle(
                                    fontSize: 80,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              ///Note SCORE CARD
              Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Your Score Card',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              ///PLAYER 1 ON SCORE CARD
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Player (X) : ',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      '${playerX}',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              ///PLAYER 2 ON SCORE CARD
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Player (O) : ',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      '${playerO}',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              ///Reset Button
              _resetGameButton(s),
            ],
          ),
        ),
      ),
    );
  }

  _resetGameButton(Size s) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: InkWell(
        splashColor: Colors.red,
        onTap: () {
          resetGame();
        },
        onLongPress: () {
          resetAllGame();
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(50),
          ),
          height: s.height * 0.5,
          width: double.infinity,
          child: Center(
            child: Text(
              'Reset Game',
              style: TextStyle(
                fontSize: 20.5,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
