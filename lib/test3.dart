import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

class ItemRoulettePage extends StatefulWidget {
  final String targetName; // The name to stop at

  const ItemRoulettePage({super.key, required this.targetName});

  @override
  _ItemRoulettePageState createState() => _ItemRoulettePageState();
}

class _ItemRoulettePageState extends State<ItemRoulettePage> {
  final List<String> items = ['A', 'B', 'C', 'D'];
  String selectedItem = "❓";
  bool isSpinning = false;

  void startRoulette() {
    if (isSpinning) return;

    isSpinning = true;
    int totalSpins = 8 + Random().nextInt(10);
    int currentIndex = 0;
    int spinsCompleted = 0;
    bool targetFound = false;

    Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {
        selectedItem = items[currentIndex];
        currentIndex = (currentIndex + 1) % items.length;
      });

      spinsCompleted++;

      if (spinsCompleted >= totalSpins && selectedItem == widget.targetName) {
        targetFound = true;
      }

      if (targetFound) {
        timer.cancel();
        setState(() {
          isSpinning = false;
        });
        return;
      }

      if (spinsCompleted >= totalSpins * 2) {
        timer.cancel();
        setState(() {
          isSpinning = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Item Roulette")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You got:",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              transitionBuilder:
                  (widget, animation) =>
                      ScaleTransition(scale: animation, child: widget),
              child: Text(
                selectedItem,
                key: ValueKey(selectedItem),
                style: TextStyle(fontSize: 40),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: isSpinning ? null : startRoulette,
              child: Text("! Spin"),
            ),
          ],
        ),
      ),
    );
  }
}
