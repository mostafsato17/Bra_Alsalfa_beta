import 'package:test_3/Core/Constant/appcolor.dart';
import 'package:flutter/material.dart';

class HomeCircularButtomWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  const HomeCircularButtomWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(50),
            splashColor: Colors.white30,
            child: Ink(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Appcolor.lightTextColor(context),
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: Appcolor.backgroundColors(context),
                size: 40,
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(
            color: Appcolor.textColor(context),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
