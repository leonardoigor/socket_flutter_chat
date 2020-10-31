import 'package:flutter/cupertino.dart';

class LoginProvider extends ChangeNotifier {
  String _user = '';

  String get user => _user;
  set user(String value) {
    _user = value;
    print(value);
    notifyListeners();
  }
}
