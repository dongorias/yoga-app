import 'package:flutter/material.dart';
import 'package:yoga_app/utils/app_constant.dart';

TextStyle customTextStyle(
    Color color,
    double size, {
      FontWeight? fontWeight,
      TextStyle? textStyle,
      FontStyle? fontStyle,
      Paint? background,
    }) {
  return TextStyle(
      color: color,
      fontSize: size,
      fontFamily: "Calibri",
      fontWeight: fontWeight ?? FontWeight.w400,
      background: background,
      fontStyle: fontStyle??FontStyle.normal);
}

Widget  defaultButton(
    String text, {
      VoidCallback? voidCallback,
      Color? background,
      Color? borderColor,
      Color? textColor, TextStyle? textStyle,
      double? borderRadius
    }) {
  return  TextButton(
    child: Text(text, textAlign:TextAlign.center, style: TextStyle(color: textColor??AppColors.kBlack, fontSize: FontSizes.s14, fontWeight: FontWeight.w400),),
    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(background), shape:MaterialStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius??24),
        side: BorderSide(
          color: borderColor ?? AppColors.kPrimary,
        ))) ),
    onPressed: voidCallback,
  );

}