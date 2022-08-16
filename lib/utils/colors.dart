import 'package:flutter/material.dart';

const primaryColor = Color.fromRGBO(251, 219, 195, 1);
const appBarColor = Color.fromRGBO(234, 190, 128, 1);
ColorScheme colorScheme = ColorScheme.fromSwatch().copyWith(
  primary: primaryColor,
  secondary: const Color.fromRGBO(93, 126, 88, 1),
);
RadialGradient backgroundGradient = const RadialGradient(
  radius: 2,
  focalRadius: 4,
  colors: [appBarColor, primaryColor],
);
BoxShadow greenShadow = BoxShadow(
  blurRadius: 30,
  color: colorScheme.secondary,
);
const textLabelColor = Colors.white70;
