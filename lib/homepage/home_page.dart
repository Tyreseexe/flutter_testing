//*TO DO
/*

Server Database

/Later:
Create TextSyle folders
Create Navigation bar
Create Nav Drawer

*/

import 'package:flutter/material.dart';
import 'package:flutter_testing/pages/challenge_page.dart';
import 'package:flutter_testing/theme/colors.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                'Welcome, User',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              // context,
              // MaterialPageRoute(
              // builder: (context) => const ChallengPage(),
              // ),
              // );
              // Get.to(const ChallengPage());
              Get.to(() => const ChallengPage());
            },
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width - 30,
              decoration: BoxDecoration(
                color: clPrimary,
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text(
                      'Challenges',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Spacer(),
                  //icon here
                  Icon(
                    Icons.list_alt_rounded,
                    size: 38,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              // context,
              // MaterialPageRoute(
              // builder: (context) => const ChallengPage(),
              // ),
              // );
              // Get.to(const ChallengPage());
              Get.to(() => const ChallengPage());
            },
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width - 30,
              decoration: BoxDecoration(
                color: clAccent,
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text(
                      'Completed Challenges',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Spacer(),
                  //icon here
                  Icon(
                    Icons.checklist_sharp,
                    size: 38,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
