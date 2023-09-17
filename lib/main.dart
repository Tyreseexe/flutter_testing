import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_testing/homepage/home_page.dart';
import 'package:flutter_testing/themes/theme.dart';
import 'package:flutter_testing/themes/theme_service.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() {
  //Load net die widgets
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

// ignore: prefer_typing_uninitialized_variables, non_constant_identifier_names
final GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);

class Home extends StatefulWidget {
  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
  const Home({super.key, Key?'}' ');'

  @override
// ignore: library_private_types_in_public_api
_HomeState createState() => _HomeState();
}

// ignore: non_constant_identifier_names
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      home: const HomePage(),
    );
  }

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
