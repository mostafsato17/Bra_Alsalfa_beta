import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:test_3/test.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class SelectplayerController extends GetxController {} 

class SelectplayerControllertemp extends SelectplayerController {
  late TextEditingController nameController;
  Map<String, String> playerVotes = {};
  List<String> names = [];
  List<Map<String, String>> votingHistory = [];
  bool gameStarted = false;
  bool playerRead = false;
  int currentPlayerIndex = 0;
  int fuck = 0;
  int asks = 0;
  int another_ask = 0;
  int vote = 0;
  int ranomaiz = 0;
  Map<String, int> playerPoints = {};

  @override
  void onInit() {
    nameController = TextEditingController();
    loadNames();
    loadPlayerPoints();
    super.onInit();
  }

  void initializePlayerPoints() {
    for (String name in names) {
      playerPoints[name] = 0;
    }
    update();
  }

  void recordPlayerVote({
    required String voter,
    required String votedFor,
    required bool isImposter,
  }) {
    votingHistory.add({
      'voter': voter,
      'votedFor': votedFor,
      'wasCorrect': isImposter.toString(),
    });

    if (isImposter) {
      playerPoints[voter] = (playerPoints[voter] ?? 0) + 100;
    } else {
      playerPoints[voter] = playerPoints[voter] ?? 0;
    }

    vote++;
    savePlayerPoints();
    update();
  }

  void savePlayerPoints() async {
    final prefs = await SharedPreferences.getInstance();
    final pointsMap = playerPoints.map(
      (key, value) => MapEntry(key, value.toString()),
    );
    prefs.setString('playerPoints', jsonEncode(pointsMap));
  }

  void loadPlayerPoints() async {
    final prefs = await SharedPreferences.getInstance();
    final pointsMapString = prefs.getString('playerPoints');
    if (pointsMapString != null) {
      final pointsMap = jsonDecode(pointsMapString) as Map<String, dynamic>;
      playerPoints = pointsMap.map(
        (key, value) => MapEntry(key, int.parse(value)),
      );
    }
    update();
  }

  void resetPlayerPoints() {
    playerPoints.clear();
    savePlayerPoints();
    update();
  }

  //=============*****======================================
  //   void updateRandomaiz(int rand) {
  //     ranomaiz = rand;
  //     update();
  //   }
  //==========================================================
  // void VotePlayerResualt(int selectedIndex, bool xx) {
  //   (xx == true)
  //       ? votingHistory.add({
  //           'voter': names[vote],
  //           'votedFor': names[selectedIndex],
  //         })
  //       : null;
  //   vote++;
  //   // (vote >= names.length) ? Get.to(VoteResultsPage()) : null;
  //   update();
  // }
  //==========================================================

  // playAgain() {
  //   click = !click;
  //   ranomaiz = currentPlayerIndex = fuck = asks = another_ask = vote = 0;
  //   click = false;
  //   Get.to(PlayAgain());
  //   update();
  // }

  loadNames() async {
    final prefs = await SharedPreferences.getInstance();
    update();
    names = prefs.getStringList('names') ?? [];
    update();
  }

  void updaterandom(int rand) {
    ranomaiz = rand;
    update();
  }

  saveName() async {
    final name = nameController.text.trim();
    if (name.isNotEmpty) {
      final prefs = await SharedPreferences.getInstance();
      update();
      names.add(name);
      prefs.setStringList('names', names);
      update();
      nameController.clear();
    }
  }

  removeName(String itemremove) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    names.remove(itemremove);
    await prefs.setStringList('names', names);
    update();
  }

  nextPlayer() {
    if (currentPlayerIndex < names.length) currentPlayerIndex++;
    playerRead = !playerRead;
    print("===================== $currentPlayerIndex");
    update();
  }

  AskPlayer() {
    if (asks == currentPlayerIndex - 1) {
      //2 ======= 3   3 ======= 4
      fuck = asks = names.length;
    } else if (asks < names.length && asks < currentPlayerIndex) {
      asks++;
    } else {
      asks = currentPlayerIndex > 0 ? currentPlayerIndex : 0;
    }
    print("${asks - 1} ======= $asks");
    update();
  }

  ImPlayer() {
    playerRead = !playerRead;
    update();
  }

  // VotePlayer() {
  //   vote++;
  //   print("======================vote $vote");
  //   update();
  // }

  AnotherAsk() {
    (another_ask == names.length - 1) ? another_ask = 0 : another_ask++;
    print("======================vote $another_ask");
    update();
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }
}
