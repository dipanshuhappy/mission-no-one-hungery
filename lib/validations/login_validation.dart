import 'package:flutter/foundation.dart';
import 'package:full_belly/validations/validation_item.dart';
import 'package:provider/provider.dart';

class LoginValidation with ChangeNotifier {
  static String EMAILREGEXP =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  ValidationItem _email = ValidationItem(null, null);
  ValidationItem _password = ValidationItem(null, null);
  //Getters
  ValidationItem get email => _email;
  ValidationItem get password => _password;
  void validateEmail(String value) {
    RegExp regex = RegExp(EMAILREGEXP);
    if (regex.hasMatch(value)) {
      _email = ValidationItem(value, null);
    } else {
      _email = ValidationItem(null, "Email not Valid");
    }
    notifyListeners();
  }

  void validatePassword(String value) {
    if (value.isNotEmpty && value.length >= 8) {
      _password = ValidationItem(value, null);
    } else {
      _password = ValidationItem(null, "Password is too short");
    }
    notifyListeners();
  }

  bool get validate {
    return _email.value != null && _password.value != null;
  }
}
