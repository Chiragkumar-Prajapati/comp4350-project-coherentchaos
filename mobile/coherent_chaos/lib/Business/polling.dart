import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import '../Model/game.dart';
import 'handleApiCalls.dart';
import '../Presentations/game_page.dart';

final baseURI = "http://18.191.224.215:5000/api/game";

class Polling {

  Game game;
  final HandleAPIs handleAPIs = new HandleAPIs();

  Polling(this.game);

  void startPolling() {
    bool gameOver = false;
    var boardState;
    while(gameOver) {
      boardState = handleAPIs.pingBoardState(game.gameId, game);

      if(boardState == 'gameOver') {
        gameOver = true;
      }
      else {
        

      }

      sleep(const Duration(seconds: 2));
    }
  }


}