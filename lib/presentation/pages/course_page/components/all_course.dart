import 'package:flutter/material.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/data/source/data.dart';
import 'package:portality/presentation/pages/components/ulti_function.dart';
import 'package:portality/presentation/pages/components/ulti_widget.dart';
import 'package:portality/presentation/pages/course_info_page/course_info_page.dart';

class AllCourse extends StatefulWidget {
  dynamic context, index, isDk;
  AllCourse(this.context, this.index, this.isDk, {Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _AllCourse();
  }
}

class _AllCourse extends State<AllCourse> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: dataCourse[widget.index]!.color,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Center(
        child: Row(
          children: [
            Container(
              width: 65,
              height: 65,
              decoration: const BoxDecoration(
                  color: colorTheme,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Center(
                  child: InkWell(
                      onTap: () {
                        showBottomSheet(
                            context: context,
                            builder: (context) {
                              return CourseInfoPage(widget.index);
                            });
                      },
                      child: Image.asset(iconsPath + 'course.png'))),
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    dataCourse[widget.index]!.name,
                    style: textStyle(Colors.black, 14, FontWeight.w700),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Text(
                    'Giáo viên: ' + dataCourse[widget.index]!.teacherName,
                    style: textStyle(Colors.black, 13, FontWeight.w400),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Expanded(child: Text(' ')),
                      InkWell(
                        child: Image.asset(iconsPath +
                            (widget.isDk ? 'signCourse.png' : 'HKH.png')),
                        onTap: () {
                          setState(() {
                            widget.isDk = !widget.isDk;
                            saveCourse(widget.index, !widget.isDk);
                          });
                        },
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
