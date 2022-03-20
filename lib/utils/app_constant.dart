
import 'package:flutter/material.dart';

String getPathImage(String name){
  return "assets/images/$name";
}
String getPathSVG(String name){
  return "assets/svg/$name";
}

class FontSizes {
  static const double s8 = 8;
  static const double s10 = 10;
  static const double s12 = 12;
  static const double s14 = 14;
  static const double s16 = 16;
  static const double s18 = 18;
  static const double s20 = 20;
  static const double s24 = 24;
  static const double s28 = 28;
  static const double s32 = 32;
  static const double s30 = 30;
  static const double s36 = 36;
  static const double s48 = 48;
}

class AppColors {
  static Color get kPrimary => const Color(0xFFC9E19B);
  static Color get kPrimaryLite => const Color(0xFFCDD8B7);
  static Color get kBlack => const Color(0xFF000000);
  static Color get kWhite => const Color(0xFFFFFFFF);
  static Color get kBlue => const Color(0xFF0085FF);
}

