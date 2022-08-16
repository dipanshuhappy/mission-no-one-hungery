import 'package:flutter/material.dart';
class TextButtonWithShadow extends StatelessWidget {
  const TextButtonWithShadow({Key? key,required this.text,required this.onPressed,required this.textStyle}) : super(key: key);
  final Function onPressed;
  final Text text;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(textStyle:  textStyle),
      onPressed: ()=>onPressed(),
      child: text,
    );
  }
}
