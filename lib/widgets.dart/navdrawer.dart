import 'package:flutter/material.dart';
import 'package:flutter_testing/homepage/home_page.dart';
import 'package:flutter_testing/pages/account_page.dart';
import 'package:get/get.dart';
import 'package:flutter_testing/themes/colors.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
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
          //alles onder toe moet in n colum wees
          Column(
            children: [
              ListTile(
                leading: const Icon(
                  Icons.settings,
                ),
                title: const Text('Settings'),
                onTap: () {
                  Get.to(() => const AccountPage());
                },
              ),
              const Divider(
                indent: 20,
                endIndent: 20,
                thickness: 2,
                color: clSecondary,
              ),
              Padding(
                padding: EdgeInsets.zero,
                child: ListTile(
                  leading: const Icon(Icons.exit_to_app),
                  title: const Text('Logout'),
                  onTap: () {
                    Get.to(() => const HomePage());
                  },
                ),
              ),
            ],
          ), //children
        ], //<Widget>[]
      ),
    );
  }
}
