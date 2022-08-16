import 'package:flutter/material.dart';
import 'package:full_belly/utils/colors.dart';
class GreenShadowBox extends StatelessWidget {
  GreenShadowBox({Key? key,required this.child}) : super(key: key);
  Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(2),
        boxShadow: [
          greenShadow
        ],
      ),
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 30, right: 30),
      child: child,
    );
  }
}

