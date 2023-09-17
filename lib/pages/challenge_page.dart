import 'package:flutter/material.dart';
import 'package:flutter_testing/themes/theme_service.dart';
import 'package:get/get.dart';

class ChallengPage extends StatefulWidget {
  const ChallengPage({super.key});

  @override
  State<ChallengPage> createState() => _ChallengPageState();
}

class _ChallengPageState extends State<ChallengPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: const Column(
        children: [
          Center(
            child: Text(
              'Challlenge Page',
              style: TextStyle(
                fontSize: 32,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                'Challenges for the Day',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }

  //Ons begin hierdie function met n '_' want dit is local
  //Local functions kan net binne hierdie class(Stateful widget) gebruik word
  _appBar() {
    //ons skyf die appbar se code hierna toe sodat die code bo makliker lees
    //Dit is ook makliker om hierso met die appbar te werk as daar bo te sit
    return AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      //Hoe ver weg van die background moet hy wees
      elevation: 0,
      actions: [
        GestureDetector(
          onTap: () {
            //Verander na dark mode
            //Hierdie code gaan ons later in die settings page bere
            ThemeService().switchTheme();
            setState(() {});
          },
          //As DarkMode aan is dan wys sunny as nie wys Darkmode_rounded
          child: Get.isDarkMode
              ? const Icon(
                  Icons.sunny,
                  size: 25,
                )
              : const Icon(
                  Icons.dark_mode_rounded,
                  size: 25,
                ),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
