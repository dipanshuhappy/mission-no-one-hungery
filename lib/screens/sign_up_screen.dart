import 'package:flutter/material.dart';
import 'package:full_belly/widgets/default_scaffold.dart';
import '../utils/colors.dart';
import '../widgets/green_shadow_box.dart';
import '../widgets/label_text_field.dart';
import '../widgets/login_or_sign_up_button.dart';
import '../widgets/social_icons_buttons.dart';

class SignUpTextField extends StatelessWidget {
  const SignUpTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children:  [
      const LabelTextField(label: "Email"),
      const LabelTextField(label: "Password"),
      const LabelTextField(label: "Retype Password"),
      Text("Or Sign Up using ...",style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 16)),
      const SocialIconButtons(),
      SizedBox(
        width: double.infinity,
        child:OutlinedButton(
          onPressed: ()=>onSignUpPress(),
          child: const Text(
              "Create Account",
            style: TextStyle(
              fontSize: 16
            ),
          ),
        ) ,
      )
    ]);
  }
  onSignUpPress() {}
}
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    void _onLoginClick() => {
    Navigator.pop(context)
  };
    return
      DefaultScaffold(body: Container(
        decoration: BoxDecoration(gradient: backgroundGradient),
        child: Center(
            child:
            SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, bottom: 16),
                    child: LoginOrSignUpButton(
                      isLoginActive: false,
                      onLogin: _onLoginClick,
                    ),
                  ),
          GreenShadowBox(
              child: const Padding(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child: SignUpTextField()))
        ])))));
  }

  onSignUpPress() {}
}
