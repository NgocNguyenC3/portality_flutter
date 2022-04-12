import 'package:flutter/material.dart';
import 'package:portality/data/models/course.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/data/source/data.dart';
import 'package:portality/presentation/pages/components/ulti_widget.dart';

class HeaderCourseInfo extends StatelessWidget {
  dynamic index;
  HeaderCourseInfo(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CourseModel data = dataCourse[index]!;
    return Padding(
        padding: const EdgeInsets.only(
            top: 25.0, left: sizePaddingAppBar, bottom: 10, right: 10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.name,
              style: textStyle(Colors.white, 26.9, FontWeight.w700),
            ),
            const SizedBox(
              height: sizePaddingAppBar,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Image.asset(
                      imagesPath + 'img.png',
                      width: 60,
                      height: 60,
                    )),
                const SizedBox(
                  width: 15,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data.teacherName,
                        style: textStyle(Colors.white, 20.0, FontWeight.w700),
                        overflow: TextOverflow.clip,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Giáo viên',
                        style: textStyle(color9, 13.0, FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
