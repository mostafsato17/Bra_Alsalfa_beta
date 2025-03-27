import 'package:flutter/material.dart';
import 'package:test_3/Controller/Change_language_controller.dart';
import 'package:test_3/Core/Constant/appcolor.dart';
import 'package:test_3/Core/Models/skibidiaudio.dart';
import 'package:test_3/View/Screen/Intoduction/achievement.dart';
import 'package:test_3/View/Screen/Intoduction/instructions.dart';
import 'package:test_3/View/Screen/Intoduction/settings.dart';
import 'package:test_3/View/Screen/Home/categories_screen.dart';
import 'package:test_3/View/Widget/Introduction_Widget/Home_screen_widgets/Home_circular_buttom_widget.dart';
import 'package:test_3/View/Widget/Introduction_Widget/Home_screen_widgets/Home_screen_main_button.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ChangelangController controller = Get.put(ChangelangController());
    return Scaffold(
      backgroundColor: Appcolor.backgroundColors(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "33".tr,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'ElMessiri',
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Appcolor.textColor(context),
            ),
          ),
          SizedBox(height: 5),
          Text(
            "34".tr,
            style: TextStyle(
              fontFamily: 'ElMessiri',
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Appcolor.lightTextColor(context),
            ),
          ),
          SizedBox(height: 50),
          HomeScreenMainButton(
            name: "12".tr,
            onTap: () {
              skibidi_audio('click.wav');
              Get.to(CategoriesScreen(), transition: Transition.zoom);
              controller.xxx();
            },
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeCircularButtomWidget(
                icon: Icons.settings,
                label: "36".tr,
                onTap: () {
                  skibidi_audio('trans.wav');

                  controller.xxx();
                  Get.to(SettingsScreen());
                },
              ),
              HomeCircularButtomWidget(
                icon: Icons.book,
                label: "37".tr,
                onTap: () {
                  skibidi_audio('trans.wav');

                  Get.to(InstructionsScreen());
                },
              ),
              HomeCircularButtomWidget(
                icon: Icons.emoji_events,
                label: "38".tr,
                onTap: () {
                  skibidi_audio('trans.wav');

                  Get.to(AchievementsScreen());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
