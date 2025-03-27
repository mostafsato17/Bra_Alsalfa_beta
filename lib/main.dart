import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'package:test_3/Core/Constant/ThemeData.dart';
import 'package:test_3/Core/Localasation/Trans_controller.dart';
import 'package:test_3/Core/Localasation/Translation.dart';
import 'package:test_3/Core/Services/services.dart';
import 'package:test_3/Routes.dart';
import 'package:test_3/View/Screen/Intoduction/home_screen.dart';
import 'package:test_3/test.dart';
import 'package:test_3/test2.dart';
import 'package:test_3/Controller/selectplayer_controller.dart';
import 'package:test_3/test3.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await FlameAudio.audioCache.loadAll(["assets/audio/slam dunk bill.mp3"]);
  await initservise();
  Get.put(TransController());
  runApp(
    ChangeNotifierProvider(create: (_) => ThemeProvider(), child: MyApp()),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Transleter controller = Get.put(Transleter());
    // TransController controller = Get.put(TransController());
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return GetMaterialApp(
          translations: Transleter(),
          locale: Get.find<TransController>().language,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode:
              themeProvider.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          debugShowCheckedModeBanner: false,
          // home: HomeScreen()
          getPages: routes,
        );
      },
    );
  }
}
