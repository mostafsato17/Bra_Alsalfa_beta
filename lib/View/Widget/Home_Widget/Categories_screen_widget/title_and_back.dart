import 'package:flutter/material.dart';
import 'package:test_3/Core/Constant/appcolor.dart';
import 'package:test_3/Core/Models/skibidiaudio.dart';
import 'package:test_3/View/Screen/Intoduction/home_screen.dart';
import 'package:get/get.dart';

class TitleAndBack extends StatelessWidget {
  const TitleAndBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            skibidi_audio("pop.wav");

            Get.to(HomeScreen());
          },
          icon: Icon(Icons.arrow_back),
        ),
        SizedBox(width: Get.width / 4 - 20),
        Center(
          child: Text(
            "10".tr,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Appcolor.textColor(context),
            ),
          ),
        ),
      ],
    );
  }
}
