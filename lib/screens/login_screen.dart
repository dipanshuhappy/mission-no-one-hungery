import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:full_belly/screens/home_screen.dart';
import 'package:full_belly/screens/sign_up_screen.dart';
import 'package:full_belly/utils/colors.dart';
import 'package:full_belly/validations/login_validation.dart';
import 'package:full_belly/widgets/default_scaffold.dart';
import 'package:full_belly/widgets/green_shadow_box.dart';
import 'package:full_belly/widgets/label_text_field.dart';
import 'package:full_belly/widgets/login_or_sign_up_button.dart';
import 'package:full_belly/widgets/social_icons_buttons.dart';
import 'package:provider/provider.dart';

import '../auth_service.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    void gotoHomeScreen() => Navigator.push(
        context, MaterialPageRoute(builder: (context) => (const HomeScreen())));
    final loginValidatorService = Provider.of<LoginValidation>(context);
    final authService = Provider.of<AuthService>(context);
    onLoginPress() async {
      if (loginValidatorService.validate) {
        try {
          final user = await authService.signInWithEmailAndPassword(
              loginValidatorService.email.value!,
              loginValidatorService.password.value!);
          print(user);
          gotoHomeScreen();
        } catch (e) {
          print(e);
        }
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        LabelTextField(
          label: "Email",
          errorText: loginValidatorService.email.error,
          onChanged: loginValidatorService.validateEmail,
        ),
        LabelTextField(
            label: "Password",
            errorText: loginValidatorService.password.error,
            onChanged: loginValidatorService.validatePassword),
        const SocialIconButtons(),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: loginValidatorService.validate ? onLoginPress : null,
            child: Text(
              "Enter ",
              style: TextStyle(fontSize: 16),
            ),
          ),
        )
      ],
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  late String password;
  late String email;

  Widget build(BuildContext context) {
    void _onSignUpClick() => {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => (const SignUpScreen())))
        };
    BoxDecoration _getLoginBackground() => BoxDecoration(
          gradient: backgroundGradient,
        );
    return DefaultScaffold(
      body: Container(
        decoration: _getLoginBackground(),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 16),
              child: LoginOrSignUpButton(
                isLoginActive: true,
                onSignUp: _onSignUpClick,
              ),
            ),
            GreenShadowBox(
                child: const Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: LoginTextField()))
          ]),
        ),
      ),
    );
  }
}
