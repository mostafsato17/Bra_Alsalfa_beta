import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_3/Core/Constant/appcolor.dart';

class OptionController extends GetxController {
  String correctOption = '';
  String selectedOption = '';

  bool sbi = true;

  Future<void> onOptionSelected(String option) async { 
    sbi = false;
    selectedOption = option;
    update();
  }

  Color getButtonColor(String option,context) {
    if (selectedOption.isEmpty) {
      return Appcolor.randomAhh2(context);
    } else if (option == correctOption) {
      return Color.fromARGB(255, 5, 168, 3);
    } else if (option == selectedOption && option != correctOption) {
      return Color.fromARGB(255, 164, 1, 1);
    } else {
      return Appcolor.randomAhh2(context);
    }
  }
}
