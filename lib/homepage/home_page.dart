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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChallengPage(),
                ),
              );
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
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text(
                      'Challenges',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
