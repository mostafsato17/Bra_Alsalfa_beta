import 'package:flutter/material.dart';
import 'package:test_3/Core/Constant/ThemeData.dart';
import 'package:provider/provider.dart';

// final themeProvider = Provider.of<ThemeProvider>(context);
class Appcolor {
  // static Color backgroundColors(BuildContext context) {
  //   final themeProvider = Provider.of<ThemeProvider>(context);
  //   return themeProvider.isDarkMode ? Color.fromARGB(255, 255, 255, 255) : Color(0xFF1E1E2C);
  // }
  static Color backgroundColors(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return themeProvider.isDarkMode ? Color(0xFF1E1E2C) : Color(0xFFFFF8E1);
  }

  static Color primaryColor(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return themeProvider.isDarkMode ? Color.fromARGB(255, 255, 205, 123) : Color.fromARGB(255, 248, 153, 0);
  }

  static Color secondaryColor(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return themeProvider.isDarkMode ? Color.fromARGB(255, 161, 194, 91) : Color.fromARGB(255, 136, 199, 0);
  }

  static Color accentColor(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return themeProvider.isDarkMode ? Color.fromARGB(255, 108, 177, 255) : Color.fromARGB(255, 0, 119, 255);
  }

  static Color textColor(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return themeProvider.isDarkMode ? Color(0xFFFFFFFF) : Color(0xFF444444);
  }

  //Color(0xFF28293E)
  static Color randomAhh(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return themeProvider.isDarkMode ? Colors.white24 : Color.fromARGB(129, 184, 185, 161);
  }

  static Color randomAhh2(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return themeProvider.isDarkMode ? Color(0xFF28293E) : const Color.fromARGB(44, 97, 97, 97);
  }

  static Color randomAhh3(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return themeProvider.isDarkMode ? Color(0xFF28293E) : const Color.fromARGB(197, 255, 255, 255);
  }

  //Colors.white24
  static Color lightTextColor(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return themeProvider.isDarkMode ? Color(0xFFFFFFFF) : Color(0xFF444444);
  }

  // static Color lightTextColor(BuildContext context) {
  //   final themeProvider = Provider.of<ThemeProvider>(context);
  //   return themeProvider.isDarkMode ? Color.fromARGB(255, 81, 81, 81) : Color.fromARGB(255, 255, 255, 255);
  // }

  // static const Color secondaryColor = Color.fromARGB(255, 136, 199, 0);
  // static const Color accentColor = Color.fromARGB(255, 0, 119, 255);
  // static const Color textColor = Color.fromARGB(255, 30, 30, 30);
  // static const Color lightTextColor = Color.fromARGB(255, 255, 255, 255);
  // static const Color backgroundColor = Color(0xFF1E1E2C);
}
