import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:full_belly/auth_service.dart';
import 'package:full_belly/screens/login_screen.dart';
import 'package:full_belly/utils/colors.dart';
import 'package:full_belly/utils/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:full_belly/validations/login_validation.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

// ...
Future<void> main() async {
  await dotenv.load();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  ThemeData _getTheme() => ThemeData(
      textTheme: textTheme,
      primaryColor: primaryColor,
      colorScheme: colorScheme,
      inputDecorationTheme: inputDecorationTheme,
      appBarTheme: appBarTheme,
      outlinedButtonTheme: outlinedButtonTheme);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => AuthService()),
        ChangeNotifierProvider(create: (_) => LoginValidation()),
      ],
      child: MaterialApp(
          theme: _getTheme(),
          title: "Hunger Hunter",
          home: const LoginScreen()),
    );
  }
}
