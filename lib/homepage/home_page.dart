//*TO DO
/*

Local of nie-local Database [Ruben kan kies]
Kry design voorbeelde vir die app vanaf internet
Copy die design

/Later:
Create TextSyle folders
Create Navigation bar
Create Nav Drawer

*/

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text(
            'Begin',
          ),
        ],
      ),
    );
  }
}
