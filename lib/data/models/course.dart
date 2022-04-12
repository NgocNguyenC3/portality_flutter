import 'package:flutter/material.dart';

class CourseModel {
  final String _name;
  final String _teacherName;
  final String _time;
  final String _dayOfWeek;
  final String _description;
  final String _fee;
  final String _require;
  final Color _color;

  CourseModel(this._name, this._time, this._dayOfWeek, this._description,
      this._fee, this._require, this._teacherName, this._color);

  String get name => _name;
  String get time => _time;
  String get dayOfWeek => _dayOfWeek;
  String get fee => _fee;
  String get description => _description;
  String get require => _require;
  String get teacherName => _teacherName;
  Color get color => _color;
}
