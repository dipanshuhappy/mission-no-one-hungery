import 'package:flutter/material.dart';
class LoginOrSignUpButton extends StatelessWidget {
  LoginOrSignUpButton({Key? key,required this.isLoginActive,this.onSignUp,this.onLogin}) : super(key: key);
  final bool isLoginActive;
  final Function? onSignUp;
  final Function? onLogin;
  @override
  Widget build(BuildContext context) {

    ButtonStyle activeTextButtonStyle = TextButton.styleFrom(
        textStyle:
        TextStyle(fontSize: 40, fontWeight: FontWeight.w300, shadows: [
          Shadow(
              offset: Offset(0, 10),
              blurRadius: 25,
              color: Theme.of(context).colorScheme.secondary)
        ]));
    ButtonStyle inactiveTextButtonStyle = TextButton.styleFrom(
        textStyle:
        TextStyle(fontSize: 25, fontWeight: FontWeight.w200, shadows: [
          Shadow(
              offset: const Offset(0, 10),
              blurRadius: 25,
              color: Theme.of(context).colorScheme.secondary)
        ]));
    TextStyle buttonTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.secondary,
    );
    return Row(
      children: [
        TextButton(
          style: isLoginActive?activeTextButtonStyle:inactiveTextButtonStyle,
          onPressed: () => onLogin!(),
          child: Text("Login", style: buttonTextStyle),
        ),
        Text(
          "/",
          style: TextStyle(
              fontSize: 40,
              color: Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.w200),
        ),
        TextButton(
          style: isLoginActive?inactiveTextButtonStyle:activeTextButtonStyle,
          onPressed: () => onSignUp!(),
          child: Text("Sign Up", style: buttonTextStyle),
        ),
      ],
    );
  }
}