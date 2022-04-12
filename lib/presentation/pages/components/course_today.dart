import 'package:flutter/material.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/presentation/pages/components/ulti_widget.dart';
import 'package:portality/presentation/pages/course_info_page/course_info_page.dart';

Widget courseToDay(name, time, nameTeacher, dayOfWeek, id, context) {
  return InkWell(
    onTap: () {
      if (id != null) {
        showBottomSheet(
            context: context,
            builder: (context) {
              return CourseInfoPage(id);
            });
      }
    },
    child: Row(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 15),
          width: 65,
          height: 65,
          decoration: const BoxDecoration(
              color: colorTheme,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Center(child: Image.asset(iconsPath + 'course.png')),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: textStyle(Colors.black, 14, FontWeight.w700),
            ),
            Text(
              'Thời gian: ' + time + ' - ' + dayOfWeek,
              style: textStyle(Colors.black, 12, FontWeight.w500),
            ),
            Text(
              'Giáo viên: ' + nameTeacher,
              style: textStyle(Colors.black, 12, FontWeight.w500),
            ),
          ],
        )
      ],
    ),
  );
}
