import 'package:test_3/Controller/Change_language_controller.dart';
import 'package:test_3/Controller/selectplayer_controller.dart';
import 'package:test_3/Core/Constant/appcolor.dart';
import 'package:test_3/Data/game_data.dart';
import 'package:flutter/material.dart';
import 'package:test_3/View/Screen/Home/playerselect.dart';
import 'package:test_3/View/Widget/Home_Widget/Categories_screen_widget/Choose_categorie.dart';
import 'package:test_3/View/Widget/Home_Widget/Categories_screen_widget/title_and_back.dart';
import 'package:get/get.dart';

class CategoriesScreen extends StatelessWidget {
  final categories = gameData;
  CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ChangelangController controller = Get.put(ChangelangController());
    SelectplayerControllertemp secontroller = Get.put(
      SelectplayerControllertemp(),
    );

    return Scaffold(
      backgroundColor: Appcolor.backgroundColors(context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            TitleAndBack(),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return ChooseCategorie(
                    onTap: () {
                      secontroller.resetPlayerPoints();
                      Get.offAll(PlayerSelect(categories: index));
                      print("====================== xxnx $index");
                    },
                    icon: categories[index].icon,
                    data:
                        (controller.isar == true)
                            ? categories[index].game
                            : categories[index].id,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
