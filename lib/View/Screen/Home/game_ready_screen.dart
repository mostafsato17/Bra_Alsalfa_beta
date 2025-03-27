import 'package:test_3/Core/Constant/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:test_3/Core/Shared/Back_Widget.dart';
import 'package:test_3/View/Screen/Home/playerselect.dart';
import 'package:test_3/View/Screen/Home/start_the_game.dart';
import 'package:get/get.dart';
import 'package:test_3/Controller/selectplayer_controller.dart';

class GameReadycreen extends StatelessWidget {
  final List<String> players;
  final int topic;
  final int categoriessalfa6;

  const GameReadycreen({
    required this.players,
    super.key,
    required this.topic,
    required this.categoriessalfa6,
  });

  @override
  Widget build(BuildContext context) {
    SelectplayerControllertemp controller = SelectplayerControllertemp();
    return Scaffold(
      backgroundColor: Appcolor.backgroundColors(context),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Get.off(PlayerSelect(categories: 0));
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                SizedBox(width: 30),
                Text(
                  "11".tr,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Appcolor.textColor(context),
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                itemCount: players.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Appcolor.randomAhh2(context),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      title: Text(
                        players[index],
                        style: TextStyle(
                          color: Appcolor.textColor(context),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            BackWidget(
              onTap: () {
                Get.to(
                  StartTheGame(
                    topic: topic,
                    categoriessalfa5: categoriessalfa6,
                  ),
                );
              },
              name: "12".tr,
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
