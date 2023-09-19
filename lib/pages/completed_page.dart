import 'package:flutter/material.dart';
import 'package:flutter_testing/themes/text_styles.dart';
import 'package:get/get.dart';

class CompletedPage extends StatefulWidget {
  const CompletedPage({super.key});

  @override
  State<CompletedPage> createState() => _CompletedPageState();
}

class _CompletedPageState extends State<CompletedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.colorScheme.background,
      appBar: _appBar(),
      body: Column(
        children: [
          Center(
            child: Text(
              'Completed\n      Challlenges',
              style: boldText.copyWith(
                fontSize: 32,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }

  _appBar() {
    //ons skyf die appbar se code hierna toe sodat die code bo makliker lees
    //Dit is ook makliker om hierso met die appbar te werk as daar bo te sit
    return AppBar(
      backgroundColor: context.theme.colorScheme.background,
      foregroundColor: Get.isDarkMode ? Colors.white : Colors.black,
      //Hoe ver weg van die background moet hy wees
      elevation: 0,
    );
  }
}
