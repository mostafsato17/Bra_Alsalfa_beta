import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Services extends GetxController {
  late SharedPreferences shared;
  Future<Services> init() async {
    shared = await SharedPreferences.getInstance();
    return this;
  }
}

initservise() async {
  await Get.putAsync(() => Services().init());
}
