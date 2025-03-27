import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart'; 

class TransController extends GetxController { 
  Locale? language;
  late SharedPreferences prefs;

  @override
  void onInit() async {
    prefs = await SharedPreferences.getInstance(); 
    String? appLanguage = prefs.getString("lang");
    if (appLanguage == "ar") {
      language = Locale("ar");
    } else if (appLanguage == "en") {
      language = Locale("en");
    } else {
      // language = Locale("en");
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }

  changeLang(String langCode) async {
    Locale locale = Locale(langCode);
    await prefs.setString("lang", langCode);
    Get.updateLocale(locale);
    Get.snackbar(
      'Language Changed',
      'App language has been changed to ${langCode == 'ar' ? 'Arabic' : 'English'}',
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }

  requestPerLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Get.snackbar("Location Service", "Location services are disabled.");
    }
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Get.snackbar("Permission", "Location permission is denied");
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Get.snackbar("Permission", "Location permission is permanently denied");
    }
  }
}
