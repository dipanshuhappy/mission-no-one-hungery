import 'package:flutter/material.dart';
import 'package:full_belly/utils/colors.dart';

class GreenButton extends StatelessWidget {
  GreenButton(
      {Key? key,
      this.width,
      this.height,
      required this.text,
      required this.onPress})
      : super(key: key);
  Function onPress;
  Text text;
  double? width;
  double? height;

  @override
  Widget build(BuildContext context) {
    return
      Container(
        decoration: BoxDecoration(boxShadow: [greenShadow]),
        child:
        SizedBox(
        height: height, //height of button
        width: width, //width of button
        child: ElevatedButton(
            onPressed: () => onPress(),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Theme.of(context).colorScheme.secondary),
              shadowColor: MaterialStateProperty.all<Color>(
                  Theme.of(context).colorScheme.secondary),
              side: MaterialStateBorderSide.resolveWith(
                  (_) => BorderSide(width: 1, color: appBarColor)),
              shape: (MaterialStateProperty.all(RoundedRectangleBorder(
                  //to set border radius to button
                  borderRadius: BorderRadius.circular(10)))),
            ),
            child: text))
      );
  }
}
