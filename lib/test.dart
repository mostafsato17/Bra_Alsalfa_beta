import 'package:flutter/material.dart';


class DayNightSwitch extends StatefulWidget {
  const DayNightSwitch({super.key});

  @override
  State<DayNightSwitch> createState() => _DayNightSwitchState();
}

class _DayNightSwitchState extends State<DayNightSwitch>
    with SingleTickerProviderStateMixin {
  bool isChecked = false;
  late AnimationController _sunRotationController;
  late AnimationController _moonTiltController;

  @override
  void initState() {
    super.initState();

    // Sun rotation animation
    _sunRotationController = AnimationController(
      duration: const Duration(seconds: 15),
      vsync: this,
    )..repeat();

    // Moon tilt animation
    _moonTiltController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _sunRotationController.dispose();
    _moonTiltController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Container(
        width: 64,
        height: 34,
        decoration: BoxDecoration(
          color: isChecked ? const Color(0xFF183153) : const Color(0xFF73C0FC),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          children: [
            // Sun Icon with rotation animation
            Positioned(
              top: 6,
              left: 36,
              child: AnimatedBuilder(
                animation: _sunRotationController,
                builder: (context, child) {
                  return Transform.rotate(
                    angle: _sunRotationController.value * 2 * 3.1416,
                    child: child,
                  );
                },
                child: const Icon(
                  Icons.wb_sunny,
                  color: Color(0xFFFFD43B),
                  size: 24,
                ),
              ),
            ),

            // Moon Icon with tilt animation
            Positioned(
              top: 5,
              left: 5,
              child: AnimatedBuilder(
                animation: _moonTiltController,
                builder: (context, child) {
                  return Transform.rotate(
                    angle: _moonTiltController.value * 0.1745, // 10 degrees in radians
                    child: child,
                  );
                },
                child: const Icon(
                  Icons.nightlight_round,
                  color: Color(0xFF73C0FC),
                  size: 24,
                ),
              ),
            ),

            // Slider
            AnimatedPositioned(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
              left: isChecked ? 32 : 2,
              bottom: 2,
              width: 30,
              height: 30,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFE8E8E8),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    )
    );
  }
}