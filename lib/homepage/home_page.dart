//*TO DO
/*

!Ideas:
routine
routine planner
workout planner
calorie tracker
Widgets vir home screen

Ruben:
google sign in (youtube hoe om dit te doen)
log in page (FloatingActionButton in die log in page wat met google in sign
              As kla connect het met google gaan na home apge)
Nav drawer (Account page, Settings, Home, Sign out, darkmode, )


Tiaan:
Database connect
read from database (display challenges) //eers n later ding
account page (user info and sign out button, user stats)
Nav bar (home, workout plan, account)


*/

import 'package:flutter/material.dart';
import 'package:flutter_testing/pages/challenge_page.dart';
import 'package:flutter_testing/pages/completed_page.dart';
import 'package:flutter_testing/themes/colors.dart';
import 'package:flutter_testing/themes/text_styles.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

//Global variables hierso (Global beteken dit kan van enige file gebruik word)

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text(
                'Welcome, User',
                //Bold Text (die een wat ons gemaak het)
                //copyWith copy dit en replace
                style: boldText.copyWith(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: () {
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
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text(
                      'Challenges',
                      style: regularText.copyWith(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                  //icon here
                  const Icon(
                    Icons.list_alt_rounded,
                    size: 38,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => const CompletedPage());
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
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text(
                      'Completed',
                      style: regularText.copyWith(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.checklist_sharp,
                    size: 38,
                    color: Colors.white,
                  ),
                  const SizedBox(
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
