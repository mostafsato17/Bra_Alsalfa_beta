// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:test_3/Controller/Change_language_controller.dart';
import 'package:test_3/Core/Constant/ThemeData.dart';
import 'package:test_3/Core/Constant/appcolor.dart';
import 'package:test_3/Core/Localasation/Trans_controller.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isSoundOn = true;
  bool isVibrationOn = true;
  bool isArabic = true;
  TransController controller = Get.put(TransController());
  ChangelangController langcontroller = Get.put(ChangelangController());
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      backgroundColor: Appcolor.backgroundColors(context),
      body: Column(
        children: [
          SizedBox(height: 30),
          Center(
            child: Text(
              "36".tr,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Appcolor.textColor(context),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                _buildSwitchTile("46".tr, Icons.volume_up, isSoundOn, (value) {
                  setState(() => isSoundOn = value);
                }),
                _buildSwitchTile("47".tr, Icons.vibration, isVibrationOn, (
                  value,
                ) {
                  setState(() => isVibrationOn = value);
                }),
                _buildSwitchTile(
                  "48".tr,
                  Icons.dark_mode,
                  themeProvider.isDarkMode,
                  (value) {
                    setState(() => themeProvider.toggleTheme());
                  },
                ),
                _buildLanguageTile(),
                SizedBox(height: 20),
                _buildButtonTile("50".tr, Icons.restart_alt, Colors.red, () {
                  _showResetDialog();
                }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 160,
                height: 55,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orange.withOpacity(0.6),
                      blurRadius: 15,
                      offset: Offset(5, 5),
                    ),
                    BoxShadow(
                      color: Colors.deepOrange.withOpacity(0.4),
                      blurRadius: 10,
                      offset: Offset(-5, -5),
                    ),
                  ],
                ),
                child: Text(
                  "32".tr,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Appcolor.textColor(context),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _buildSwitchTile(
    String title,
    IconData icon,
    bool value,
    Function(bool) onChanged,
  ) {
    return SwitchListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: 18, color: Appcolor.textColor(context)),
      ),
      secondary: Icon(icon, color: Colors.orangeAccent),
      value: value,
      activeColor: Colors.orangeAccent,
      onChanged: onChanged,
    );
  }

  Widget _buildLanguageTile() {
    return ListTile(
      leading: Icon(Icons.language, color: Colors.orangeAccent),
      title: Text(
        "49".tr,
        style: TextStyle(fontSize: 18, color: Appcolor.textColor(context)),
      ),
      trailing: GestureDetector(
        onTap: () {
          setState(() => isArabic = !isArabic);
        },
        child: Text(
          (langcontroller.isar == true) ? 'AR   ' : 'EN   ',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.orangeAccent,
          ),
        ),
      ),
      onTap: () {
        isArabic ? controller.changeLang("ar") : controller.changeLang("en");
        langcontroller.xxx();
        isArabic = !isArabic;
      },
    );
  }

  Widget _buildButtonTile(
    String title,
    IconData icon,
    Color color,
    VoidCallback onPressed,
  ) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        children: [
          SizedBox(width: 15),
          Icon(icon, color: color),
          SizedBox(width: 16),
          Text(title, style: TextStyle(fontSize: 17, color: color)),
          SizedBox(width: 120),
          Icon(Icons.arrow_forward_ios, size: 18, color: color),
        ],
      ),
    );
    // return ListTile(
    //   leading: Icon(icon, color: color),
    //   title: Text(title,
    //       style:
    //           TextStyle(fontSize: 17, color: color, )),
    //   trailing: Icon(Icons.arrow_forward_ios, size: 18, color: color),
    //   onTap: onPressed,
    // );
  }

  void _showResetDialog() {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text("50".tr, style: TextStyle()),
            content: Text("51".tr, style: TextStyle()),
            actions: [
              TextButton(
                child: Text("52".tr, style: TextStyle()),
                onPressed: () => Navigator.pop(context),
              ),
              TextButton(
                child: Text("53".tr, style: TextStyle(color: Colors.red)),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
    );
  }
}
