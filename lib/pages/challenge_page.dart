import 'package:flutter/material.dart';

class ChallengPage extends StatefulWidget {
  const ChallengPage({super.key});

  @override
  State<ChallengPage> createState() => _ChallengPageState();
}

class _ChallengPageState extends State<ChallengPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
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
          //constainer hierso
        ],
      ),
    );
  }

  //functions here
  //custom widgets hier
}
