import 'package:tempo_contacts/utils/utils.dart';
import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static bool get isDark => AppEnvironment.isDark;

  static Color get darkBackground => const Color(0xff11141C);
  static Color get lightBackground => const Color(0xffffffff);

  static Color get theBlack => const Color(0xff000000);
  static Color get theWhite => const Color(0xffffffff);

  static Color get darkBlueAccent => const Color(0xff414AF2);
  static Color get lightBlueAccent => const Color(0xff4680FF);
  static Color get lightGreenAccent => const Color(0xff38F2BD);
  static Color get darkGreenAccent => const Color(0xff00BA88);
  static Color get lightRedAccent => const Color(0xffF55858);
  static Color get lightGray => const Color(0xffEFF0F6);
  static Color get darkGray => const Color.fromARGB(255, 199, 199, 201);
}
