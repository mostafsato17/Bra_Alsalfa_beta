import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConnectButtomWidget extends StatelessWidget {
  final Function()? onTap;
  final String name;
  const ConnectButtomWidget({super.key, required this.onTap, required this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => onTap,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          height: 50,
          width: Get.width,
          decoration: BoxDecoration(color: const Color(0xff8C5833), borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Text(
              name,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ));
  }
}
