import 'package:test_3/Core/Constant/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:test_3/Controller/selectplayer_controller.dart';
import 'package:test_3/Core/Shared/TheHead.dart';
import 'package:test_3/Data/game_data.dart';
import 'package:test_3/View/Screen/Vote/Who_To_Ask.dart';
import 'package:get/get.dart';
import 'dart:math';

class StartTheGame extends GetView<SelectplayerControllertemp> {
  final int topic;
  final int categoriessalfa5;

  const StartTheGame({
    super.key,
    required this.topic,
    required this.categoriessalfa5,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SelectplayerControllertemp());
    var random = Random();
    int randomNumber = random.nextInt(controller.names.length);
    int randomTopic = random.nextInt(gameData[topic].words.length);
    String selectedTopic = gameData[topic].words[randomTopic];
    // String selectedName = controller.names[randomNumber];
    print(
      "================================The Imposter is ${controller.names[randomNumber]}",
    );

    return Thehead(
      child: Scaffold(
        backgroundColor: Appcolor.backgroundColors(context),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GetBuilder<SelectplayerControllertemp>(
            builder: (controller) {
              if (controller.names.isEmpty) {
                return Center(
                  child: Text(
                    'No players found. Add names first!',
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  ),
                );
              }
              return Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (controller.names.isNotEmpty)
                          Column(
                            children: [
                              if (controller.asks > 0 &&
                                  controller.currentPlayerIndex -
                                          controller.asks >=
                                      0)
                                Text(
                                  '${controller.names[controller.asks - controller.fuck]} ${"24".tr} ${controller.names[controller.asks - 1]}',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              else if (controller.currentPlayerIndex ==
                                  controller.names.length)
                                Text(
                                  "14".tr,
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Appcolor.textColor(context),
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              else if (!controller.playerRead)
                                Column(
                                  children: [
                                    Text(
                                      ' ${"15".tr} ${controller.names[controller.currentPlayerIndex]} ',
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Appcolor.textColor(context),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "16".tr,
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Appcolor.textColor(context),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "17".tr,
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Appcolor.textColor(context),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                )
                              else if (controller.currentPlayerIndex !=
                                  randomNumber)
                                Column(
                                  children: [
                                    Text(
                                      '   ${"18".tr} ${controller.names[controller.currentPlayerIndex]} ',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Appcolor.textColor(context),
                                      ),
                                    ),
                                    Text(
                                      '  ${"19".tr} $selectedTopic',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Appcolor.textColor(context),
                                      ),
                                    ),
                                    Text(
                                      " ${"20".tr} ",
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Appcolor.textColor(context),
                                      ),
                                    ),
                                  ],
                                )
                              else
                                Column(
                                  children: [
                                    Text(
                                      ' ${controller.names[controller.currentPlayerIndex]} ${"21".tr}',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      ' ${"22".tr}',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              SizedBox(height: 20),
                            ],
                          ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: Center(
                      child:
                          controller.fuck == controller.names.length
                              ? _buildCustomButton(context, "25".tr, () {
                                Get.to(
                                  WhoToAsk(
                                    random1: randomTopic,
                                    categoriessalfa4: categoriessalfa5,
                                    imposterName4:
                                        controller.names[randomNumber],
                                  ),
                                );
                              })
                              : controller.currentPlayerIndex ==
                                  controller.names.length
                              ? _buildCustomButton(
                                context,
                                "24".tr,
                                controller.AskPlayer,
                              )
                              : controller.playerRead
                              ? _buildCustomButton(
                                context,
                                "23".tr,
                                controller.nextPlayer,
                              )
                              : _buildCustomButton(
                                context,
                                "23".tr,
                                controller.ImPlayer,
                              ),
                    ),
                  ),
                  // Positioned(
                  //   bottom: 20,
                  //   left: 0,
                  //   right: 0,
                  //   child: Center(
                  //     child: controller.fuck == controller.names.length
                  //         ? NextButtomWidget(
                  //             context,
                  //             onTap: () => Get.to(WhoToAsk()),
                  //             text: 'صوٌت',
                  //           )
                  //         : controller.currentPlayerIndex == controller.names.length
                  //             ? NextButtomWidget(
                  //                 context,
                  //                 onTap: () {
                  //                   controller.AskPlayer;
                  //                 },
                  //                 text: "اسأل",
                  //               )
                  //             : controller.playerRead
                  //                 ? NextButtomWidget(
                  //                     context,
                  //                     onTap: () {
                  //                       controller.nextPlayer;
                  //                     },
                  //                     text: "التالي",
                  //                   )
                  //                 : NextButtomWidget(
                  //                     context,
                  //                     onTap: () => controller.ImPlayer,
                  //                     text: 'التالي',
                  //                   ),
                  //   ),
                  // ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

Widget _buildCustomButton(
  BuildContext context,
  String text,
  VoidCallback? onPressed,
) {
  return GestureDetector(
    onTap: onPressed,
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
        text,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Appcolor.textColor(context),
        ),
      ),
    ),
  );
}
