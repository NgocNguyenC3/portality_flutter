import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portality/data/models/course.dart';
import 'package:portality/data/source/data.dart';
import 'package:portality/presentation/pages/components/ulti_widget.dart';

class BodyInfoCourse extends StatelessWidget {
  dynamic index;

  BodyInfoCourse(this.index, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    CourseModel data = dataCourse[index]!;
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        },
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            infoWidget('Thời gian', data.time + ', ${data.dayOfWeek}'),
            infoWidget('Mô tả khóa học', data.description),
            infoWidget('Học phí', data.fee),
            infoWidget('Yêu cầu', data.require),
          ],
        ),
      ),
    );
  }
}
