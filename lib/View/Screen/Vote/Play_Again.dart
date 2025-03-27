import 'package:flutter/material.dart';
import 'package:test_3/Controller/selectplayer_controller.dart';
import 'package:test_3/Core/Constant/appcolor.dart';
import 'package:test_3/View/Screen/Home/categories_screen.dart';
import 'package:test_3/View/Screen/Intoduction/home_screen.dart';
import 'package:get/get.dart';

class PlayAgain extends StatelessWidget {
  const PlayAgain({super.key});

  @override
  Widget build(BuildContext context) {
    SelectplayerControllertemp controller = Get.put(
      SelectplayerControllertemp(),
    );
    return Scaffold(
      backgroundColor: Appcolor.backgroundColors(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ElevatedButton(
            //   onPressed: () {
            //     controller.resetPlayerPoints();
            //     Future.delayed(Duration(microseconds: 50), () {
            //       // Get.toNamed(Approutes.Homescreen);
            //       Get.to(HomeScreen(), transition: Transition.downToUp);
            //     });
            //   },
            //   child: Text("home"),
            // ),
            GestureDetector(
              onTap: () async {
                controller.resetPlayerPoints();

                Future.delayed(const Duration(seconds: 1), () {
                  // Get.toNamed(Approutes.Homescreen);
                  Get.to(HomeScreen(), transition: Transition.downToUp);
                });
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 30),
                width: 200,
                height: 55,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orange.withValues(alpha: 0.6),
                      blurRadius: 15,
                      offset: Offset(5, 5),
                    ),
                    BoxShadow(
                      color: Colors.deepOrange.withValues(alpha: .4),
                      blurRadius: 10,
                      offset: Offset(-5, -5),
                    ),
                  ],
                ),
                child: Text(
                  "43".tr,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            GestureDetector(
              onTap: () {
                Get.to(CategoriesScreen());
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 30),
                width: 200,
                height: 55,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orange.withValues(alpha: 0.6),
                      blurRadius: 15,
                      offset: Offset(5, 5),
                    ),
                    BoxShadow(
                      color: Colors.deepOrange.withValues(alpha: .4),
                      blurRadius: 10,
                      offset: Offset(-5, -5),
                    ),
                  ],
                ),
                child: Text(
                  "6".tr,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
