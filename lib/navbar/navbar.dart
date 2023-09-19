import 'package:flutter/material.dart';
import 'package:flutter_testing/navbar/bar_controller.dart';
import 'package:flutter_testing/pages/account_page.dart';
import 'package:flutter_testing/pages/workout_plan.dart';
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
            children: const [HomePage(), WorkoutPlanPage(), AccountPage()],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedItemColor: clPrimary,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
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
                Icons.fitness_center,
                "",
                26,
              ),
              const BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://pbs.twimg.com/media/D4pKJmjUEAAPKf4?format=jpg&name=small',
                  ),
                  radius: 14,
                ),
                label: '',
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
