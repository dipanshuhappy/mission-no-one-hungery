import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialIconButtons extends StatelessWidget {
  const SocialIconButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
            onPressed: () => print("khi"),
            icon: Icon(
              Icons.facebook_sharp,
              color: Theme.of(context).primaryColor,
              size: 30,
            )),
        IconButton(
            onPressed: () => print("khi"),
            icon: Icon(
              FontAwesomeIcons.google,
              color: Theme.of(context).primaryColor,
              size: 30,
            )),
      ],
    );
  }
}
