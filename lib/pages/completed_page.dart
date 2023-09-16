import 'package:flutter/material.dart';

class CompletedPage extends StatefulWidget {
  const CompletedPage({super.key});

  @override
  State<CompletedPage> createState() => _CompletedPageState();
}

class _CompletedPageState extends State<CompletedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: const Column(
        children: [
          Center(
            child: Text(
              'Completed Challlenges',
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
                'Completed Challenges of All Time',
                style: TextStyle(
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
}
