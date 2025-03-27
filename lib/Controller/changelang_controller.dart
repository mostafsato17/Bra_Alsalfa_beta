import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart'; 

class ChangelangController extends GetxController {
  bool isar = true;
  xxx() async {
    late SharedPreferences prefs;
    prefs = await SharedPreferences.getInstance();
    String? appLanguage = prefs.getString("lang");
    (appLanguage == "en" ? isar = false : isar = true);
    update();
  }
}
