import 'package:flutter_testing/homepage/home_page.dart';
import 'package:flutter_testing/navbar/navbar.dart';
import 'package:flutter_testing/pages/challenge_page.dart';
import 'package:flutter_testing/pages/completed_page.dart';
import 'package:get/get.dart';

class AppPage {
  static const String navbar = '/';
  static const String home = '/home';
  static const String challenge = '/challenge';
  static const String completed = '/completed';

  static List<GetPage> routes = [
    GetPage(name: navbar, page: () => const NavBar()),
    GetPage(name: home, page: () => const HomePage()),
    GetPage(name: challenge, page: () => const ChallengPage()),
    GetPage(name: completed, page: () => const CompletedPage()),
  ];

  static String getnavbar() => navbar;
  static String gethome() => home;
  static String getchallenge() => challenge;
  static String getcompleted() => completed;
}
