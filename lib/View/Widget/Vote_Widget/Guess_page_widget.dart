import 'package:flutter/material.dart';
import 'package:test_3/Core/Constant/appcolor.dart';

class GuessPageWidget extends StatelessWidget {
  final Function()? onTap;
  final Color color;
  final String name;
  const GuessPageWidget({
    super.key,
    required this.color,
    required this.onTap,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: color,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 50),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        tileColor: Appcolor.randomAhh3(context),
        onTap: onTap,
        title: Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Appcolor.textColor(context),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        // trailing: Icon(Icons.circle_outlined, color: Colors.white),
      ),
    );
  }
}
