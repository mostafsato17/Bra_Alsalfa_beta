import 'package:flutter/material.dart';
import 'package:test_3/Core/Functions/Exit_function.dart';

class Thehead extends StatelessWidget {
  final Widget child;
  const Thehead({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        if (!didPop) {
          onWillPop();
        }
      },
      child: child,
    );
  }
}
