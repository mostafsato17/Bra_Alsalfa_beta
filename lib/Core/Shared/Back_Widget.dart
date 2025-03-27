import 'package:flutter/material.dart';
import 'package:test_3/Core/Constant/appcolor.dart';

class BackWidget extends StatelessWidget {
  final Function()? onTap;
  final String name;
  const BackWidget({super.key, required this.onTap, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: onTap,
        // onTap: () {
        //   Navigator.pop(context);
        // },
        child: Container(
          width: 160,
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
            // "32".tr,
            name,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Appcolor.textColor(context),
            ),
          ),
        ),
      ),
    );
  }
}
