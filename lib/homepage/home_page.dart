//*TO DO
/*

!Ideas:
routine
routine planner
workout planner
Widgets vir home screen

Ruben:
google sign in
log in page 
Nav drawer 
about page

Tiaan:
Database connect
account page
workout page
navbar
local storage vir die


*/

import 'package:flutter/material.dart';
import 'package:flutter_testing/pages/challenge_page.dart';
import 'package:flutter_testing/pages/completed_page.dart';
import 'package:flutter_testing/themes/colors.dart';
import 'package:flutter_testing/themes/text_styles.dart';
import 'package:flutter_testing/widgets.dart/navdrawer.dart';
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
      drawer: const MyDrawer(),
      appBar: _appBar(),
      backgroundColor: context.theme.colorScheme.background,
      body: Column(
        children: [
          Center(
            child: Text(
              'Welcome, User',
              //Bold Text (die een wat ons gemaak het)
              //copyWith copy dit en replace
              style: boldText.copyWith(
                fontSize: 30,
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
                          fontSize: 25, color: Colors.white),
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

  _appBar() {
    return AppBar(
      backgroundColor: context.theme.colorScheme.background,
      elevation: 0,
      toolbarHeight: 40,
      foregroundColor: Get.isDarkMode ? Colors.white : Colors.black,
      iconTheme: const IconThemeData(
        size: 28,
      ),
    );
  }
}
