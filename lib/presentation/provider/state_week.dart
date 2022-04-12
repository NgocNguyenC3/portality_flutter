import 'package:flutter/cupertino.dart';

class StateWeek with ChangeNotifier {
  String _currentDay = 'T2';

  String get currentDay => _currentDay;

  void setDay(currentDay) {
    _currentDay = currentDay;
    notifyListeners();
  }
}
