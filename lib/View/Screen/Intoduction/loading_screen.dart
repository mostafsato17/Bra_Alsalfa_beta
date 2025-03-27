import 'package:test_3/Core/Constant/appcolor.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:test_3/View/Screen/Intoduction/home_screen.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.backgroundColors(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "33".tr,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Appcolor.textColor(context),
              ),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.orangeAccent),
            ),
            SizedBox(height: 20),
            Text(
              "44".tr,
              style: TextStyle(
                fontSize: 22,
                color: Appcolor.textColor(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
