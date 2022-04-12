import 'package:flutter/cupertino.dart';

class StateFragment with ChangeNotifier {
  StatePage _state = StatePage.homepage;
  String _name = '';
  String _pathIcon = '';
  StateFragment(state, name, pathIcon) {
    _state = state;
    _name = name;
    _pathIcon = pathIcon;
  }

  void setState(state) {
    _state = state;
    notifyListeners();
  }

  StatePage getState() => _state;

  String getName() => _name;
  String getPath() => _pathIcon;
}

enum StatePage {
  homepage,
  schedule,
  task,
  fee,
  user,
  out,
  course
}
