import 'package:flutter/material.dart';
import 'package:flutter_testing/navbar/bar_controller.dart';
import 'package:flutter_testing/pages/challenge_page.dart';
import 'package:flutter_testing/pages/completed_page.dart';
import 'package:flutter_testing/themes/colors.dart';
import 'package:get/get.dart';
import '../homepage/home_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final controller = Get.put(NavBarController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(
      builder: (context) {
        return Scaffold(
          body: IndexedStack(
            index: controller.tabIndex,
            children: const [HomePage(), ChallengPage(), CompletedPage()],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            selectedItemColor: clPrimary,
            unselectedItemColor: Colors.grey,
            currentIndex: controller.tabIndex,
            onTap: controller.changeTabIndex,
            selectedFontSize: 0,
            selectedIconTheme: const IconThemeData(size: 0),
            unselectedIconTheme: const IconThemeData(size: 0),
            items: [
              _bottombarItem(
                Icons.home_filled,
                "",
                26,
              ),
              _bottombarItem(
                Icons.list_alt_rounded,
                "",
                26,
              ),
              _bottombarItem(
                Icons.checklist_sharp,
                "",
                26,
              ),
            ],
          ),
        );
      },
    );
  }
}

_bottombarItem(IconData icon, String label, double size) {
  return BottomNavigationBarItem(
    icon: Icon(
      icon,
      size: size,
    ),
    label: label,
  );
}
