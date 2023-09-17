import 'package:flutter/material.dart';
import 'package:get/get.dart';

//Hierso create ons n pre-written scripts sodat ons nie heeltyd vir elke text
//hoef te tik wat dit moet wees nie

//Bold textstyle
TextStyle get boldText {
  return TextStyle(
      fontWeight: FontWeight.bold,
      fontFamily: 'Roboto',
      color: Get.isDarkMode ? Colors.white : Colors.black
      //Copy size
      );
}

TextStyle get regularText {
  return TextStyle(
      fontWeight: FontWeight.w400,
      fontFamily: 'Roboto',
      color: Get.isDarkMode ? Colors.white : Colors.black
      //Copy size
      );
}
