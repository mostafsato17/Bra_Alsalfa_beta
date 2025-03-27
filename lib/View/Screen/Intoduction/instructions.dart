import 'package:flutter/material.dart';
import 'package:test_3/Core/Constant/appcolor.dart';
import 'package:test_3/Core/Shared/Back_Widget.dart';
import 'package:get/get.dart';

class InstructionsScreen extends StatelessWidget {
  const InstructionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.backgroundColors(context),
      body: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "39".tr,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Appcolor.textColor(context),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "42".tr,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Appcolor.textColor(context),
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "40".tr,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Appcolor.textColor(context),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "41".tr,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Appcolor.textColor(context),
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          BackWidget(
            onTap: () {
              Navigator.pop(context);
            },
            name: "32".tr,
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
