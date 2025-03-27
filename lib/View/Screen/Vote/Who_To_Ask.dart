import 'package:flutter/material.dart';
import 'package:test_3/Controller/selectplayer_controller.dart';
import 'package:test_3/Core/Constant/appcolor.dart';
import 'package:test_3/Core/Shared/TheHead.dart';
import 'package:test_3/View/Screen/Vote/VotePage.dart';
import 'package:test_3/View/Widget/Home_Widget/Show_Players_Names_widget.dart';
import 'package:get/get.dart';

class WhoToAsk extends StatelessWidget {
  final int random1;
  final int categoriessalfa4;
  final String imposterName4;

  const WhoToAsk({
    super.key,
    required this.random1,
    required this.categoriessalfa4,
    required this.imposterName4,
  });

  @override
  Widget build(BuildContext context) {
    // Map<String, int> Picker = {};
    SelectplayerControllertemp controller = SelectplayerControllertemp();
    return Thehead(
      child: Scaffold(
        backgroundColor: Appcolor.backgroundColors(context),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: GetBuilder<SelectplayerControllertemp>(
            builder: (controller) {
              return Column(
                children: [
                  SizedBox(height: 80),
                  Text(
                    "${"54".tr} ${controller.names[controller.another_ask]} ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Appcolor.textColor(context),
                    ),
                  ),
                  SizedBox(
                    height: 400,
                    width: Get.width,
                    child: ListView.builder(
                      itemCount: controller.names.length,
                      itemBuilder: (context, index) {
                        // Don't show current voter in the list
                        if (index == controller.another_ask) {
                          return SizedBox.shrink();
                        }
                        return Card(
                          
                          color: Appcolor.randomAhh2(context),
                          margin: EdgeInsets.symmetric(vertical: 8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: ListTile(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),
                            onTap: () {
                              controller.AnotherAsk();
                            },
                            title: Text(
                              controller.names[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Appcolor.textColor(context),
                                fontSize: 20,
                              ),
                            ),
                            // trailing: Icon(Icons.circle_outlined, color: Colors.white),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 200),
                  GestureDetector(
                    onTap:
                        () => Get.to(
                          Votepage(
                            random2: random1,
                            categoriessalfa3: categoriessalfa4,
                            imposterName3: imposterName4,
                          ),
                        ),
                    child: Container(
                      width: 200,
                      height: 55,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.orange.withValues(alpha: .6),
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
                        "25".tr,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Appcolor.textColor(context),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
