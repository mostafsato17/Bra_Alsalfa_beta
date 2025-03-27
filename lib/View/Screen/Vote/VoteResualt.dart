import 'package:flutter/material.dart';
import 'package:test_3/Controller/selectplayer_controller.dart';
import 'package:test_3/Core/Constant/appcolor.dart';
import 'package:test_3/Core/Shared/TheHead.dart';
import 'package:test_3/View/Screen/Vote/Play_Again.dart';
import 'package:get/get.dart';

class VoteResultsPage extends StatelessWidget {
  const VoteResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SelectplayerControllertemp>();
    List<String> sortedPlayers =
        controller.playerPoints.keys.toList()..sort(
          (a, b) => (controller.playerPoints[b] ?? 0).compareTo(
            controller.playerPoints[a] ?? 0,
          ),
        );

    return Thehead(
      child: Scaffold(
        backgroundColor: Appcolor.backgroundColors(context),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: Text(
                  "Player Scores",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Appcolor.textColor(context),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 12),
                height: sortedPlayers.length * 60,
                width: Get.width,
                child: Card(
                  elevation: 4,
                  color: Appcolor.randomAhh2(context),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListView.separated(
                    padding: const EdgeInsets.all(12),
                    itemCount: sortedPlayers.length,
                    separatorBuilder:
                        (context, index) =>
                            Divider(color: Colors.white, height: 1),
                    itemBuilder: (context, index) {
                      String name = sortedPlayers[index];
                      int points = controller.playerPoints[name] ?? 0;
                      print(
                        "========$name ================== $points=========",
                      );
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                name,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color:
                                    points > 0
                                        ? Colors.green.withOpacity(0.7)
                                        : Colors.red.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Text(
                                "$points points",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              // SizedBox(height: 20),
              // Text(
              //   "Voting Details",
              //   style: TextStyle(
              //
              //     fontSize: 22,
              //     fontWeight: FontWeight.bold,
              //     color: Appcolor.textColor(context),
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.only(top: 12),
              //   height: 200,
              //   width: Get.width,
              //   child: Card(
              //     elevation: 4,
              //     color: Appcolor.randomAhh2(context),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(12),
              //     ),
              //     child: ListView.separated(
              //       padding: const EdgeInsets.all(12),
              //       itemCount: controller.votingHistory.length,
              //       separatorBuilder: (context, index) => Divider(
              //         color: Colors.white,
              //         height: 1,
              //       ),
              //       itemBuilder: (context, index) {
              //         final vote = controller.votingHistory[index];
              //         final bool wasCorrect = vote['wasCorrect'] == 'true';

              //         return Padding(
              //           padding: const EdgeInsets.symmetric(vertical: 8.0),
              //           child: Row(
              //             children: [
              //               Expanded(
              //                 child: Text(
              //                   "${vote['voter']} voted for ${vote['votedFor']}",
              //                   style: TextStyle(
              //                     color: Colors.white,
              //                     fontSize: 16,
              //                   ),
              //                 ),
              //               ),
              //               Container(
              //                 padding: const EdgeInsets.symmetric(
              //                   horizontal: 12,
              //                   vertical: 6,
              //                 ),
              //                 decoration: BoxDecoration(
              //                   color: wasCorrect ? Colors.green.withOpacity(0.7) : Colors.red.withOpacity(0.7),
              //                   borderRadius: BorderRadius.circular(16),
              //                 ),
              //                 child: Text(
              //                   wasCorrect ? "+100" : "0",
              //                   style: const TextStyle(
              //                     color: Colors.white,
              //                     fontWeight: FontWeight.bold,
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           ),
              //         );
              //       },
              //     ),
              //   ),
              // ),
              SizedBox(height: 20),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Get.to(PlayAgain());
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
                      //"12".tr,
                      "playagiaon",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:test_3/Controller/selectplayer_controller.dart';
// import 'package:test_3/Core/Constant/appcolor.dart';
// import 'package:get/get.dart';

// class VoteResultsPage extends StatelessWidget {
//   const VoteResultsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.find<SelectplayerControllertemp>();

//     Map<String, int> votesCount = {};
//     List<Map<String, String>> votingHistory = controller.votingHistory;
//     for (String name in controller.names) {
//       votesCount[name] = 0;
//     }
//     for (var vote in votingHistory) {
//       String votedFor = vote['votedFor'] ?? '';
//       if (votesCount.containsKey(votedFor)) {
//         votesCount[votedFor] = (votesCount[votedFor] ?? 0) + 1;
//       }
//     }
//     return Scaffold(
//       backgroundColor: Appcolor.backgroundColors(context),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 20),
//             Text(
//               "Vote Count",
//               style: TextStyle(
//                
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//                 color: Appcolor.textColor(context),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(top: 12),
//               height: controller.names.length * 60,
//               width: Get.width,
//               child: Card(
//                 elevation: 4,
//                 color: Appcolor.randomAhh2(context),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: ListView.separated(
//                   padding: const EdgeInsets.all(12),
//                   itemCount: votesCount.length,
//                   separatorBuilder: (context, index) => Divider(
//                     color: Colors.white,
//                     height: 1,
//                   ),
//                   itemBuilder: (context, index) {
//                     String name = votesCount.keys.elementAt(index);
//                     int count = votesCount[name] ?? 0;
//                     return Padding(
//                       padding: const EdgeInsets.symmetric(vertical: 8.0),
//                       child: Row(
//                         children: [
//                           Expanded(
//                             child: Text(
//                               name,
//                               style: const TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 18,
//                               ),
//                             ),
//                           ),
//                           Container(
//                             padding: const EdgeInsets.symmetric(
//                               horizontal: 12,
//                               vertical: 6,
//                             ),
//                             decoration: BoxDecoration(
//                               color: Colors.black38,
//                               borderRadius: BorderRadius.circular(16),
//                             ),
//                             child: Text(
//                               "$count votes",
//                               style: const TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }