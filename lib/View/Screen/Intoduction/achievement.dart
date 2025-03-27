import 'package:flutter/material.dart';
import 'package:test_3/Core/Constant/appcolor.dart';
import 'package:test_3/Core/Shared/Back_Widget.dart';
import 'package:test_3/View/Widget/Introduction_Widget/Achievements_Widgets/Card_widget.dart';
import 'package:get/get.dart';

class AchievementsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> achievements = [
    {"title": "27".tr, "unlocked": true},
    {"title": "28".tr, "unlocked": false},
    {"title": "29".tr, "unlocked": true},
    {"title": "30".tr, "unlocked": false},
    {"title": "31".tr, "unlocked": false},
  ];

  AchievementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.backgroundColors(context),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Center(
              child: Text(
                "26".tr,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Appcolor.textColor(context),
                ),
              ),
            ),
            SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: achievements.length,
                itemBuilder: (context, index) {
                  return CardWidget(
                    color:
                        achievements[index]["unlocked"]
                            ? Colors.orangeAccent
                            : Appcolor.randomAhh(context),
                    icon:
                        achievements[index]["unlocked"]
                            ? Icons.emoji_events
                            : Icons.lock,
                    data: achievements[index]["title"],
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: BackWidget(
                onTap: () {
                  Navigator.pop(context);
                },
                name: "32".tr,
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
