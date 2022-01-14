import 'dart:math';
class Game {
  //camel case
  int?  maxRandom;
  int? _answer;
  int _guessCount = 0;
  static List<int> myList = [];

  Game({int maxRandom = 100}) {
    this.maxRandom = maxRandom;
    var r = Random();
    _answer = r.nextInt(maxRandom) + 1;
  }

  int get guessCount {
    return _guessCount;
  }
  void addCountList() {
    myList.add(_guessCount);
  }

  int doGuess(int num) {
    // ทายถูก return 0
    // ทายมากไป return 1
    // ทายน้อยไป return -1
    _guessCount++;
    if (num > _answer!) {
      return 1;
    } else if (num < _answer!) {
      return -1;
    } else {
      return 0;
    }
  }
}