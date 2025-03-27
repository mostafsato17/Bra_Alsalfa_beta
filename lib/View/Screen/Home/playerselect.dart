import 'package:test_3/Controller/Guess_topic_controller.dart';
import 'package:test_3/Core/Constant/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:test_3/Controller/selectplayer_controller.dart';
import 'package:test_3/View/Screen/Home/categories_screen.dart';
import 'package:test_3/View/Screen/Home/game_ready_screen.dart';
import 'package:test_3/View/Widget/Home_Widget/Player_Selection_widget/enter_palyers_names.dart';
import 'package:test_3/View/Widget/Home_Widget/Show_Players_Names_widget.dart';
import 'package:test_3/View/Widget/Home_Widget/entername_and_add_widget.dart';
import 'package:get/get.dart';

class PlayerSelect extends StatelessWidget {
  final int categories;
  const PlayerSelect({super.key, required this.categories});
  @override
  Widget build(BuildContext context) {
    print("====================== $categories");
    final controller = Get.put(SelectplayerControllertemp());
    return Scaffold(
      backgroundColor: Appcolor.backgroundColors(context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GetBuilder<SelectplayerControllertemp>(
          builder: (controller) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.off(CategoriesScreen());
                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                    SizedBox(width: 30),
                    Text(
                      "13".tr,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Appcolor.textColor(context),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                EnternameAndAddWidget(),
                Expanded(child: ShowPlayersNamesWidget()),
                SizedBox(height: 20),
                Enter_players_name(
                  categories: categories,
                  onTap: () {
                    if (controller.names.length >= 3) {
                      Get.to(
                        GameReadycreen(
                          players: controller.names,
                          topic: categories,
                          categoriessalfa6: categories,
                        ),
                      );
                    } else {
                      Get.snackbar("ٌقليل", "ادخل ثلاث اسماء على الاقل");
                    }
                  },
                  data: "12".tr,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
