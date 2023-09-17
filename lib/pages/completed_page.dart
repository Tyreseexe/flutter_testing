import 'package:flutter/material.dart';
import 'package:flutter_testing/themes/text_styles.dart';

class CompletedPage extends StatefulWidget {
  const CompletedPage({super.key});

  @override
  State<CompletedPage> createState() => _CompletedPageState();
}

class _CompletedPageState extends State<CompletedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: Column(
        children: [
          Center(
            child: Text(
              'Completed Challlenges',
              style: boldText.copyWith(
                fontSize: 32,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 20,
              ),
              Text(
                'Completed Challenges',
                style: regularText.copyWith(
                  fontSize: 18,
                  color: Colors.black,
                ),
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
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      //Hoe ver weg van die background moet hy wees
      elevation: 0,
    );
  }
}
