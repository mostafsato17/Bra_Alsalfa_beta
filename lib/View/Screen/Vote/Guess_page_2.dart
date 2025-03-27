import 'package:flutter/material.dart';
import 'package:test_3/Controller/Guess_controller.dart';
import 'package:test_3/Controller/selectplayer_controller.dart';
import 'package:test_3/Core/Constant/appcolor.dart';
import 'package:test_3/Core/Constant/approutes.dart';
import 'package:test_3/Core/Shared/TheHead.dart';
import 'package:test_3/Data/game_data.dart';
import 'package:test_3/View/Screen/Intoduction/home_screen.dart';
import 'package:test_3/View/Screen/Vote/Play_Again.dart';
import 'package:test_3/View/Screen/Vote/VoteResualt.dart';
import 'package:test_3/test.dart';
import 'package:get/get.dart';

class GuessPgae2 extends StatelessWidget {
  final int random3;
  final int categoriessalfa1;
  final String imposterName;
  const GuessPgae2({
    super.key,
    required this.random3,
    required this.categoriessalfa1,
    required this.imposterName,
  });
  @override
  Widget build(BuildContext context) {
    bool tyler = false;
    SelectplayerControllertemp maincontroller = Get.put(
      SelectplayerControllertemp(),
    );
    OptionController controller = Get.put(OptionController());
    controller.correctOption = gameData[categoriessalfa1].words[random3];
    print("======================semi-final is $random3");

    return Thehead(
      child: Scaffold(
        backgroundColor: Appcolor.backgroundColors(context),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(height: 80),
              Text(
                " ${"3".tr} $imposterName",
                style: TextStyle(
                  fontSize: 30,

                  color: Appcolor.textColor(context),
                ),
              ),
              //  IconButton(
              //   color: Colors.red,
              //   onPressed: () {
              //     Get.off(VoteResultsPage());
              //   },
              //   icon: Icon(Icons.access_time_sharp),
              // ),
              GetBuilder<OptionController>(
                builder: (controller) {
                  return SizedBox(
                    height: 800,
                    width: Get.width,
                    child: ListView.builder(
                      
                      itemCount: gameData[categoriessalfa1].words.length,
                      itemBuilder: (context, index) {
                        final option = gameData[categoriessalfa1].words[index];
                        return GestureDetector(
                          
                          onTap: () async {
                            tyler = true;
                            if (controller.sbi == true) {
                              controller.onOptionSelected(option);
                              if (gameData[categoriessalfa1].words[index] ==
                                  controller.correctOption) {
                                maincontroller.recordPlayerVote(
                                  voter: imposterName,
                                  votedFor: imposterName,
                                  isImposter: true,
                                );
                                Future.delayed(const Duration(seconds: 2), () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => VoteResultsPage(),
                                    ),
                                  );
                                });
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VoteResultsPage(),
                                  ),
                                );
                              }
                            }
                            // tyler == true
                            //     ? Future.delayed(const Duration(seconds: 0), () {
                            //       // Get.toNamed(Approutes.VoteResultsPage);
                            //       Get.off(
                            //         VoteResultsPage(),
                            //         transition: Transition.size,
                            //       );
                            //     })
                            //     : null;
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 50,
                            ),
                            height: 50,
                            width: Get.width,
                            decoration: BoxDecoration(
                              color: controller.getButtonColor(option,context),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                gameData[categoriessalfa1].words[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Appcolor.textColor(context),

                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:test_3/Controller/Guess_controller.dart';
// import 'package:test_3/Controller/selectplayer_controller.dart';
// import 'package:test_3/Core/Constant/appcolor.dart';
// import 'package:test_3/Data/game_data.dart';
// import 'package:test_3/View/Screen/Vote/Play_Again.dart';
// import 'package:test_3/View/Screen/Vote/VoteResualt.dart';
// import 'package:test_3/test.dart';
// import 'package:get/get.dart';

// class GuessPgae2 extends StatelessWidget {
//   // final int topic1;
//   final int random3;
//   final int categoriessalfa1;
//   final String imposterName;
//   const GuessPgae2({super.key, required this.random3, required this.categoriessalfa1, required this.imposterName});

//   @override
//   Widget build(BuildContext context) {
//     SelectplayerControllertemp maincontroller = Get.put(SelectplayerControllertemp());
//     OptionController controller = Get.put(OptionController());
//     controller.correctOption = gameData[categoriessalfa1].words[random3];
//     print("======================semi-final is $random3");

//     return Scaffold(
//       // backgroundColor: Appcolor.backgroundColors(context),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             SizedBox(
//               height: 80,
//             ),
//             Text(
//               " ${"3".tr} $imposterName",
//               style: TextStyle(fontSize: 30, color: Appcolor.textColor(context)),
//             ),
//             GetBuilder<OptionController>(builder: (controller) {
//               return Container(
//                 height: 800,
//                 width: Get.width,
//                 child: ListView.builder(
//                   itemCount: gameData[categoriessalfa1].words.length,
//                   itemBuilder: (context, index) {
//                     print("======================final is $categoriessalfa1 ");
//                     final option = gameData[categoriessalfa1].words[index];
//                     print("======================option is is $option ");
//                     // return GestureDetector(
//                     //   onTap: () async {
//                     //     (controller.sbi == true) ? controller.onOptionSelected(option) : null;
//                     //     await Future.delayed(Duration(seconds: 3));
//                     //     // Get.to(PlayAgain());
//                     //     if (gameData[categoriessalfa1].words[index] == controller.correctOption) {
//                     //       maincontroller.recordPlayerVote(
//                     //           voter: imposterName,
//                     //           votedFor: maincontroller.names[index],
//                     //           isImposter: gameData[categoriessalfa1].words[index] == controller.correctOption, );
//                     //     } else
//                     //       Get.to(VoteResultsPage());

//                     //     // controller.onOptionSelected(option);
//                     //   },
//                      return GestureDetector(
//                       onTap: () async {
//                         if (controller.sbi == true) {
//                           controller.onOptionSelected(option);
//                           await Future.delayed(Duration(seconds: 3));
//                           if (gameData[categoriessalfa1].words[index] == controller.correctOption) {
//                             // Award 100 points to the imposter if they guess correctly
//                             maincontroller.recordPlayerVote(
//                               voter: imposterName,
//                               votedFor: imposterName, // The imposter is voting for themselves
//                               isImposter: true, // Since they guessed correctly, they are the imposter
//                             );
//                           }
//                           Get.to(VoteResultsPage());
//                         }
//                       },
//                       child: Container(
//                         margin: EdgeInsets.symmetric(vertical: 8, horizontal: 50),
//                         height: 50,
//                         width: Get.width,
//                         decoration: BoxDecoration(
//                           color: controller.getButtonColor(option),
//                           borderRadius: BorderRadius.circular(16),
//                         ),
//                         child: Center(
//                           child: Text(
//                             gameData[categoriessalfa1].words[index],
//                             textAlign: TextAlign.center,
//                             style: TextStyle(color: Appcolor.textColor(context), fontWeight: FontWeight.bold, fontSize: 20),
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               );
//             }),
//           ],
//         ),
//       ),
//     );
//   }
// }
