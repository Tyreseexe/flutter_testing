import 'package:flutter/material.dart';
import 'package:flutter_testing/pages/account_page.dart';
import 'package:get/get.dart';
import 'package:flutter_testing/themes/colors.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: clSecondary,
            ),
            child: Text(
              'ChangeMe',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
            ),
            title: const Text(
              'Settings',
            ),
            onTap: () {
              Get.to(() => const AccountPage());
            },
          ),
          const Divider(
            thickness: 2,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
