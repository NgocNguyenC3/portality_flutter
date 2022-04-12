import 'package:flutter/cupertino.dart';

class StateTask with ChangeNotifier {
  String _id = '-1';
  void setId(id) {
    _id = id;
    notifyListeners();
  }

  String get id => _id;
}
