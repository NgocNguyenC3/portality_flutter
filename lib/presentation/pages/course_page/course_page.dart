import 'package:flutter/material.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/presentation/pages/course_page/components/body.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
      body: Center(child: BodyCoursePage()),
    ));
  }
}
