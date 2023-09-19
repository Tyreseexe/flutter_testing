import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkoutPlan extends StatefulWidget {
  const WorkoutPlan({super.key});

  @override
  State<WorkoutPlan> createState() => WorkoutPlanState();
}

class WorkoutPlanState extends State<WorkoutPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      backgroundColor: context.theme.colorScheme.background,
      body: const Column(
        children: [
          Text(
            'data',
          ),
        ],
      ),
    );
  }

  _appBar() {
    return AppBar();
  }
}
