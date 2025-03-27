import 'package:flutter/material.dart';
import 'package:test_3/Core/Constant/appcolor.dart';

class HomeScreenMainButton extends StatelessWidget {
  final Function()? onTap;
  final String name;
  const HomeScreenMainButton({
    super.key,
    required this.onTap,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        splashColor: Colors.white24,
        child: Container(
          width: 260,
          height: 80,
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
                color: Colors.deepOrange.withValues(alpha: 0.4),
                blurRadius: 10,
                offset: Offset(-5, -5),
              ),
            ],
          ),
          child: Text(
            name,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Appcolor.textColor(context),
            ),
          ),
        ),
      ),
    );
  }
}
