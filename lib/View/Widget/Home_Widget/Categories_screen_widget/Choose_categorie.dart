import 'package:flutter/material.dart';
import 'package:test_3/Core/Constant/appcolor.dart';

class ChooseCategorie extends StatelessWidget {
  final Function()? onTap;
  final IconData? icon;
  final String data;
  const ChooseCategorie({
    super.key,
    required this.onTap,
    required this.icon,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Appcolor.randomAhh(context),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.orangeAccent),
            SizedBox(height: 10),
            Text(
              data,
              style: TextStyle(
                fontWeight: FontWeight.w600,

                fontSize: 20,
                color: Appcolor.textColor(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
