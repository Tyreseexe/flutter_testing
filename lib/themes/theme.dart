import 'package:flutter/material.dart';
import 'package:flutter_testing/themes/colors.dart';

class Themes {
  static final light = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light()
        .copyWith(
          primary: clPrimary,
        )
        .copyWith(
          background: Colors.white,
        ),
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark()
        .copyWith(
          primary: Colors.grey[850],
        )
        .copyWith(
          background: Colors.grey[850],
        ),
  );
}
