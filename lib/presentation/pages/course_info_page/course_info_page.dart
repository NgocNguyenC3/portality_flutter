import 'package:flutter/material.dart';
import 'package:portality/data/models/course.dart';
import 'package:portality/data/source/data.dart';

import 'components/info_course.dart';

class CourseInfoPage extends StatelessWidget {
  dynamic index;
  CourseInfoPage(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CourseModel? data = dataCourse[index];
    if (data == null) {
      index = '-1';
    }
    return Material(
        child: Scaffold(
      body: Center(child: InfoPage(index)),
    ));
  }
}
