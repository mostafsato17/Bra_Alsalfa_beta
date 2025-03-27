import 'package:flutter/material.dart';
import 'package:test_3/Controller/selectplayer_controller.dart';
import 'package:test_3/Core/Constant/appcolor.dart';
import 'package:test_3/View/Screen/Vote/Guess_page_2.dart';
import 'package:test_3/View/Screen/Vote/Random_Name.dart';
import 'package:test_3/View/Screen/Vote/VoteResualt.dart';
import 'package:get/get.dart';
import 'package:test_3/test.dart';

class Votepage extends StatelessWidget {
  final int random2;
  final int categoriessalfa3;
  final String imposterName3;
  const Votepage({
    super.key,
    required this.random2,
    required this.categoriessalfa3,
    required this.imposterName3,
  });

  @override
  Widget build(BuildContext context) {
    print("======================last $imposterName3");
    Get.put(SelectplayerControllertemp());
    return Scaffold(
      backgroundColor: Appcolor.backgroundColors(context),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: GetBuilder<SelectplayerControllertemp>(
          builder: (controller) {
            if (controller.vote >= controller.names.length) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                // Get.to(
                //   GuessPgae2(
                //     random3: random2,
                //     categoriessalfa1: categoriessalfa3,
                //     imposterName: imposterName3,
                //   ),
                // );
                //   NameSpinnerPage(
                //     names: ['A', 'B', 'C', 'D'],
                //     selectedIndex: imposterName3,
                //     categoriessalfa2: categoriessalfa3,
                //     selectedNumber: random2,
                //   ),
                //  Get.to(
                //               GuessPgae2(
                //                 random3: random2,
                //                 categoriessalfa1: categoriessalfa3,
                //                 imposterName: imposterName3,
                //               ),
                //             );
                Get.to(
                  RandomName(
                    selectedNumber: random2,
                    categoriessalfa2: categoriessalfa3,
                    names: controller.names,
                    selectedIndex: imposterName3,
                    isSpinning: false,
                  ),
                );
              });
              return Center(child: CircularProgressIndicator());
            }

            return Column(
              children: [
                SizedBox(height: 80),
                Text(
                  "${"2".tr} ,${controller.names[controller.vote]} ",
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
                      if (index == controller.vote) {
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
                            if (controller.vote >= controller.names.length) {
                              Get.to(
                                RandomName(
                                  selectedNumber: random2,
                                  categoriessalfa2: categoriessalfa3,
                                  names: ['A', 'B', 'C', 'D'],
                                  selectedIndex: imposterName3,
                                  isSpinning: false,
                                ),
                              );

                              // Get.to(
                              //   NameSpinnerPage(
                              //     names: ['A', 'B', 'C', 'D'],
                              //     selectedIndex: imposterName3,
                              //     categoriessalfa2: categoriessalfa3,
                              //     selectedNumber: random2,
                              //   ),
                              // );
                              // Get.to(
                              //   GuessPgae2(
                              //     random3: random2,
                              //     categoriessalfa1: categoriessalfa3,
                              //     imposterName: imposterName3,
                              //   ),
                              // );
                            } else {
                              controller.recordPlayerVote(
                                voter: controller.names[controller.vote],
                                votedFor: controller.names[index],
                                isImposter:
                                    controller.names[index] == imposterName3,
                              );
                            }
                          },
                          title: Text(
                            controller.names[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:test_3/Controller/selectplayer_controller.dart';
// import 'package:test_3/Core/Constant/appcolor.dart';
// import 'package:test_3/View/Screen/Vote/Random_Name.dart';
// import 'package:test_3/test.dart';
// import 'package:get/get.dart';

// class Votepage extends StatelessWidget {
//   final int random2;
//   final int categoriessalfa3;
//   final String imposterName3;
//   const Votepage({super.key, required this.random2, required this.categoriessalfa3, required this.imposterName3});

//   @override
//   Widget build(BuildContext context) {
//     bool xx;
//     Get.put(SelectplayerControllertemp());
//     return Scaffold(
//       backgroundColor: Appcolor.backgroundColors(context),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: GetBuilder<SelectplayerControllertemp>(builder: (controller) {
//           if (controller.vote >= controller.names.length) {
//             WidgetsBinding.instance.addPostFrameCallback((_) {
//               Get.to(VoteResultsPage());
//               // Get.to(RandomName(
//               //   selectedNumber: random2,
//               //   categoriessalfa2: categoriessalfa3,
//               //   impostername2: '',
//               // ));
//             });
//             return Center(child: CircularProgressIndicator());
//           }

//           return Column(
//             children: [
//               SizedBox(
//                 height: 80,
//               ),
//               Text(
//                 "${"2".tr} ,${controller.names[controller.vote]} ",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Appcolor.textColor(context),
//                 ),
//               ),
//               Container(
//                 height: 250,
//                 width: Get.width,
//                 child: ListView.builder(
//                   itemCount: controller.names.length,
//                   itemBuilder: (context, index) {
//                     if (index == controller.vote) {
//                       return SizedBox.shrink();
//                     }
//                     return Card(
//                       color: Appcolor.randomAhh2(context),
//                       margin: EdgeInsets.symmetric(vertical: 8),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: ListTile(
//                         onTap: () {
//                           if (controller.vote >= controller.names.length - 1) {
//                             // Get.to(VoteResultsPage());
//                             Get.to(RandomName(
//                               selectedNumber: random2,
//                               categoriessalfa2: categoriessalfa3,
//                               impostername2: imposterName3,
//                             ));
//                           } else {
//                             if (controller.names[index] == imposterName3) {
//                               xx = true;
//                               controller.VotePlayerResualt(index, xx);
//                             } else {
//                               xx = false;
//                               controller.VotePlayerResualt(index, xx);
//                             }
//                           }
//                         },
//                         title: Text(
//                           controller.names[index],
//                           textAlign: TextAlign.center,
//                           style: TextStyle(color: Colors.white, fontSize: 20),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           );
//         }),
//       ),
//     );
//   }
// }
