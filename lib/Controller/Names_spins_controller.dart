import 'dart:async';
import 'dart:math';
import 'package:get/get.dart';

class NamesSpinsController extends GetxController {
  late List<String> items = [
    "🍌 Banana",
    "🍄 Mushroom",
    "⚡ Lightning",
    "🎾 Green Shell",
    "🔴 Red Shell",
    "🌈 Star",
    "🛢️ Bob-omb",
    "🐢 Blue Shell",
  ];

  String selectedItem = "❓"; // Default before spinning
  bool isSpinning = false;

  void startRoulette() {
    if (isSpinning) return;

    isSpinning = true;
    int totalSpins = 15 + Random().nextInt(10); // Random spin count
    int currentIndex = 0;

    Timer.periodic(Duration(milliseconds: 100), (timer) {
      selectedItem = items[currentIndex];
      currentIndex = (currentIndex + 1) % items.length;
      update();

      if (timer.tick >= totalSpins) {
        timer.cancel();
        int finalIndex = Random().nextInt(items.length);

        selectedItem = items[finalIndex];
        isSpinning = false;
        update();
      }
    });
  }
}
// import 'dart:async';
// import 'dart:math';
// import 'package:get/get.dart';

// class NamesSpinsController extends GetxController {
//   final List<String> items = [
//     "🍌 Banana",
//     "🍄 Mushroom",
//     "⚡ Lightning",
//     "🎾 Green Shell",
//     "🔴 Red Shell",
//     "🌈 Star",
//     "🛢️ Bob-omb",
//     "🐢 Blue Shell",
//   ];

//   String selectedItem = "❓"; // Default before spinning
//   bool isSpinning = false;
//   int spinDuration = 3000; // Total spin duration in milliseconds

//   void startRoulette() {
//     if (isSpinning) return;

//     isSpinning = true;
//     update();

//     int totalSpins = 15 + Random().nextInt(10); // Random spin count
//     int currentIndex = 0;
//     int startTime = DateTime.now().millisecondsSinceEpoch;

//     Timer.periodic(Duration(milliseconds: 100), (timer) {
//       int elapsedTime = DateTime.now().millisecondsSinceEpoch - startTime;
//       double progress = elapsedTime / spinDuration;

//       // Gradually slow down the spinning
//       if (progress >= 1.0) {
//         timer.cancel();
//         int finalIndex = Random().nextInt(items.length);
//         selectedItem = items[finalIndex];
//         isSpinning = false;
//         update();
//         return;
//       }

//       // Update the selected item
//       currentIndex = (currentIndex + 1) % items.length;
//       selectedItem = items[currentIndex];
//       update();
//     });
//   }
// }
