import 'package:flutter/material.dart';
import 'package:test_3/Core/Constant/appcolor.dart';

class NextButtomWidget extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const NextButtomWidget(BuildContext context, {super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
}
