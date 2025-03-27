import 'package:flutter/material.dart';
import 'package:test_3/Controller/selectplayer_controller.dart';
import 'package:get/get.dart';


class ShowPlayers extends GetView<SelectplayerControllertemp> {
  const ShowPlayers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      height: 400,
      width: Get.width,
      child: ListView.builder(
        itemCount: controller.names.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: IconButton(
              onPressed: () => controller.removeName(controller.names[index]),
              icon: Icon(Icons.remove),
            ),
            title: Text(controller.names[index]),
          );
        },
      ),
    );
  }
}
