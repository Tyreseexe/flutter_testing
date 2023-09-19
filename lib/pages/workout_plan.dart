import 'package:flutter/material.dart';
import 'package:flutter_testing/themes/text_styles.dart';
import 'package:get/get.dart';

class WorkoutPlanPage extends StatefulWidget {
  const WorkoutPlanPage({super.key});

  @override
  State<WorkoutPlanPage> createState() => WorkoutPlanPageState();
}

class WorkoutPlanPageState extends State<WorkoutPlanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.colorScheme.background,
      appBar: _appBar(),
      body: Column(
        children: [
          Center(
            child: Text(
              'Your Workout Plan',
              style: boldText.copyWith(
                fontSize: 28,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width - 40,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(
                0.1,
              ),
              borderRadius: BorderRadius.circular(
                10,
              ),
              border: Border.all(
                color: Colors.grey,
                width: 2,
              ),
            ),
          )
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
      actions: const [
        Icon(
          Icons.edit,
          size: 28,
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
