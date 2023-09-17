import 'package:flutter/material.dart';
import 'package:flutter_testing/homepage/home_page.dart';
import 'package:flutter_testing/themes/theme.dart';
import 'package:get/get.dart';

void main() {
  // WidgetsBinding.instance.initInstances();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeMode.dark,
      home: const HomePage(),
    );
  }
}
