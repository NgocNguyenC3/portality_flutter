import 'package:flutter/cupertino.dart';

class AccountModel with ChangeNotifier {
  String _email = "";
  String _password = "";

  void setMail(email) {
    _email = email;
    notifyListeners();
  }

  void setPassword(password) {
    _password = password;
    notifyListeners();
  }

  

  String getEmail() => _email;

  String getPassword() => _password;
  
}
