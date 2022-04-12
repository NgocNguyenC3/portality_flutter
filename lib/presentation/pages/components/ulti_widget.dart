import 'package:flutter/material.dart';
import 'package:portality/data/models/course.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/data/source/data.dart';
import 'package:portality/presentation/pages/course_info_page/course_info_page.dart';

Decoration boxWhiteBorder() {
  return const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.vertical(top: Radius.circular(10)));
}

TextStyle textStyle(color, size, fontWeight) {
  return TextStyle(
      color: color, fontSize: size.toDouble()!, fontWeight: fontWeight);
}

Widget infoWidget(title, text) {
  return Padding(
    padding: const EdgeInsets.only(
        top: 8.0, left: sizePaddingAppBar, bottom: 8.0, right: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: textStyle(Colors.black, 20.0, FontWeight.w700),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: textStyle(color10, 16, FontWeight.w500),
        )
      ],
    ),
  );
}

Widget scheduleItem(context, id) {
  CourseModel data = dataCourse[id]!;
  return InkWell(
    onTap: () {
      showBottomSheet(
          context: context,
          builder: (context) {
            return CourseInfoPage(id);
          });
    },
    child: Container(
      margin: const EdgeInsets.only(top: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8.0),
      decoration: const BoxDecoration(
          color: color2, borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.name,
              style: textStyle(Colors.black, 18.0, FontWeight.w700),
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  iconsPath + 'clock.png',
                  width: 15,
                  height: 15,
                ),
                const SizedBox(
                  width: 9,
                ),
                Text(
                  data.time,
                  style: textStyle(color12, 13, FontWeight.w600),
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Giáo viên: ' + data.teacherName,
              style: textStyle(Colors.black, 13.0, FontWeight.w600),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    ),
  );
}

Widget taskBox(id, index) {
  return Container(
    margin: const EdgeInsets.only(top: 15, right: 10),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            width: 45,
            height: 45,
            decoration: const BoxDecoration(
                color: color13,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Center(child: Image.asset(iconsPath + 'course_blue.png'))),
        const SizedBox(
          width: 7,
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                dataCourse[id]!.name,
                style: textStyle(Colors.black, 15, FontWeight.w700),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                'Nội dung: ' + dataTask[id]![index].content,
                overflow: TextOverflow.fade,
                style: textStyle(Colors.black, 13, FontWeight.w400),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                'Thời gian : ' +
                    dataTask[id]![index].timeEnd +
                    ' - ' +
                    dataTask[id]![index].dayEnd,
                overflow: TextOverflow.fade,
                style: textStyle(Colors.black, 10, FontWeight.w700),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget notificationBox(index, color) {
  return Container(
    margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
    padding: const EdgeInsets.all(7),
    decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(10))),
    child: Row(
      children: [
        Container(
            width: 45,
            height: 45,
            decoration: const BoxDecoration(
                color: colorTheme,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Center(
                child: Image.asset(
              iconsPath + 'course.png',
              width: 21,
              height: 21,
            ))),
        const SizedBox(
          width: 7,
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dataNotification[index]!,
                overflow: TextOverflow.ellipsis,
                style: textStyle(Colors.black, 14, FontWeight.w700),
                maxLines: 2,
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Image.asset(
                    iconsPath + 'clock.png',
                    width: 9,
                    height: 9,
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    double.parse(index).toString() + ' ngày trước',
                    overflow: TextOverflow.visible,
                    style: textStyle(color5, 12, FontWeight.w700),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
