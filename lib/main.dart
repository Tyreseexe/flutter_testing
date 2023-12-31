import 'package:flutter/material.dart';
import 'package:flutter_testing/navbar/navbar.dart';
import 'package:flutter_testing/themes/theme.dart';
import 'package:flutter_testing/themes/theme_service.dart';
import 'package:get/get.dart';

void main() {
  //Load net die widgets
  WidgetsFlutterBinding.ensureInitialized();

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
      themeMode: ThemeService().theme,
      home: const NavBar(),
    );
  }
}
