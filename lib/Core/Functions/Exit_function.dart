import 'package:flutter/services.dart';
import 'package:get/get.dart';

Future<void> onWillPop() async {
  bool? exit;

  // Get.back(result: false);
  exit = await Get.defaultDialog(
    title: "Exit App",
    middleText: "Are you sure you want to exit the app?",
    textConfirm: "Yes",
    textCancel: "No",
    onConfirm: () {
      // Get.back(result: true);
      SystemNavigator.pop();
    },
    onCancel: () {
      Get.back(result: false);
    },
  );
  exit = true;
}
