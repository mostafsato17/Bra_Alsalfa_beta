import 'package:flutter/material.dart';
import 'package:test_3/Core/Constant/appcolor.dart';

class CardWidget extends StatelessWidget {
  final Color? color;
  final IconData? icon;
  final String data;
  const CardWidget({
    super.key,
    required this.color,
    required this.icon,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: Icon(icon, color: Appcolor.textColor(context), size: 30),
        title: Text(
          data,
          style: TextStyle(fontSize: 20, color: Appcolor.textColor(context)),
        ),
      ),
    );
  }
}
