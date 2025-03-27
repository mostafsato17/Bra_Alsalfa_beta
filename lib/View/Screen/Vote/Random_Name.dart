import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_3/Core/Constant/appcolor.dart';
import 'package:test_3/View/Screen/Vote/Guess_page_2.dart';

class RandomName extends StatefulWidget {
  final List<String> names;
  final String selectedIndex;
  final int categoriessalfa2;
  final int selectedNumber;
  bool isSpinning;

  RandomName({
    super.key,
    required this.names,
    required this.selectedIndex,
    required this.categoriessalfa2,
    required this.selectedNumber,
    required this.isSpinning,
  });

  @override
  _RandomNameState createState() => _RandomNameState();
}

class _RandomNameState extends State<RandomName> with SingleTickerProviderStateMixin {
  String selectedItem = "❓";
  late final AnimationController _animationController;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);
  }

  void startRoulette() {
    if (widget.isSpinning) return;
    
    widget.isSpinning = true;
    int totalSpins = 8 + Random().nextInt(10);
    int currentIndex = 0;
    int spinsCompleted = 0;
    
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {
        selectedItem = widget.names[currentIndex];
        currentIndex = (currentIndex + 1) % widget.names.length;
      });

      spinsCompleted++;

      if (spinsCompleted >= totalSpins && selectedItem == widget.selectedIndex) {
        timer.cancel();
        setState(() {
          widget.isSpinning = false;
          _animationController.forward();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.backgroundColors(context),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
           
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Who's the Imposter?",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 20),
                AnimatedSwitcher(
                  duration: Duration(milliseconds: 300),
                  transitionBuilder: (widget, animation) => ScaleTransition(scale: animation, child: widget),
                  child: Container(
                    key: ValueKey(selectedItem),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      selectedItem,
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: widget.isSpinning ? null : startRoulette,
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    backgroundColor: Colors.orange.shade800,
                  ),
                  child: Text("Spin the Wheel!", style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Get.to(GuessPgae2(
                      random3: widget.selectedNumber,
                      categoriessalfa1: widget.categoriessalfa2,
                      imposterName: widget.selectedIndex,
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    backgroundColor: Colors.white.withOpacity(0.2),
                  ),
                  child: Text("See the Result", style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
             
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
