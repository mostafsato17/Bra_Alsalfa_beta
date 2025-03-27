import 'package:get/get.dart';
import 'package:test_3/Core/Constant/approutes.dart';
import 'package:test_3/View/Screen/Intoduction/home_screen.dart';
import 'package:test_3/View/Screen/Intoduction/settings.dart';
import 'package:test_3/View/Screen/Vote/VoteResualt.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => HomeScreen()),
  GetPage(name: Approutes.Setting, page: () => SettingsScreen()),//VoteResultsPage
    GetPage(name: Approutes.VoteResultsPage, page: () => VoteResultsPage()),//VoteResultsPage

];
