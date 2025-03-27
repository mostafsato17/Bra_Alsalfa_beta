import 'package:test_3/Core/Constant/appcolor.dart' show Appcolor;
import 'package:flutter/material.dart';
import 'package:test_3/Controller/selectplayer_controller.dart';
import 'package:get/get.dart';

class EnternameAndAddWidget extends GetView<SelectplayerControllertemp> {
  const EnternameAndAddWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: controller.saveName,
          child: Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(Icons.add, color: Colors.white, size: 28),
          ),
        ),
        SizedBox(width: 15,),
        Expanded(
          child: TextField(
            textAlign: TextAlign.right,
            controller: controller.nameController,
            style: TextStyle(
              color: Appcolor.textColor(context),
              fontWeight: FontWeight.w600,
            ),
            decoration: InputDecoration(
              hintText: "13".tr,
              hintStyle: TextStyle(color: Appcolor.textColor(context)),
              filled: true,
              fillColor: Appcolor.randomAhh2(context),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
