import 'package:test_3/Core/Constant/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:test_3/Controller/selectplayer_controller.dart';
import 'package:get/get.dart';

class ShowPlayersNamesWidget extends GetView<SelectplayerControllertemp> {
  const ShowPlayersNamesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.names.length,
      itemBuilder: (context, index) {
        return Card(
          color: Appcolor.randomAhh2(context),
          margin: EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            title: Text(
              controller.names[index],
              style: TextStyle(color: Appcolor.textColor(context), fontSize: 20),
            ),
            trailing: IconButton(
              icon: Icon(Icons.close, color: Colors.redAccent),
              onPressed: () => controller.removeName(controller.names[index]),
            ),
          ),
        );
      },
    );
  }
}
