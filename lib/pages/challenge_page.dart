import 'package:flutter/material.dart';

class ChallengPage extends StatefulWidget {
  const ChallengPage({super.key});

  @override
  State<ChallengPage> createState() => _ChallengPageState();
}

class _ChallengPageState extends State<ChallengPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text(
            'challlenge page',
          ),
        ],
      ),
    );
  }
}
