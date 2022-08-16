import 'package:flutter/material.dart';
import 'package:full_belly/utils/colors.dart';

const textTheme = TextTheme(subtitle1: TextStyle(color: Colors.white70));
const inputDecorationTheme = InputDecorationTheme(
  hoverColor: textLabelColor,
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: textLabelColor),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Color.fromRGBO(234, 190, 128, 1)),
  ),
  labelStyle: TextStyle(color: textLabelColor),
  floatingLabelStyle: TextStyle(color: Color.fromRGBO(234, 190, 128, 1)),
  isDense: true,
);
const appBarTheme = AppBarTheme(color: appBarColor);
OutlinedButtonThemeData outlinedButtonTheme = OutlinedButtonThemeData(
    style: ButtonStyle(
        side: MaterialStateBorderSide.resolveWith((states) => const BorderSide(
            color: appBarColor, width: 1, style: BorderStyle.solid))));
