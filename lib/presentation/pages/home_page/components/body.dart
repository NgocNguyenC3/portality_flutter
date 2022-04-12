import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/data/source/data.dart';
import 'package:portality/presentation/pages/components/course_today.dart';
import 'package:portality/presentation/pages/components/ulti_function.dart';
import 'package:portality/presentation/pages/components/ulti_widget.dart';
import 'package:portality/presentation/pages/course_page/course_page.dart';
import 'package:portality/presentation/provider/state_fragment.dart';
import 'package:provider/provider.dart';

class BodyHomePage extends StatefulWidget {
  BodyHomePage({Key? key}) : super(key: key);

  @override
  State<BodyHomePage> createState() => _BodyHomePageState();
}

class _BodyHomePageState extends State<BodyHomePage> {
  final stateList = [
    StateFragment(StatePage.course, 'Khóa học', iconsPath + 'course_blue.png'),
    StateFragment(
        StatePage.schedule, 'Thời khóa biểu', iconsPath + 'schedule_blue.png'),
    StateFragment(StatePage.task, 'Nhiệm vụ', iconsPath + 'task_blue.png'),
    StateFragment(StatePage.fee, 'Học phí', iconsPath + 'fee_blue.png'),
  ];

  final colorList = [color1, color2, color3, color4];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Menu',
          style: textStyle(Colors.black, 30, FontWeight.w700),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 169,
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              },
            ),
            child: ListView.builder(
                itemCount: stateList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  dynamic i = stateList[index].getName().indexOf(' ');
                  return InkWell(
                    onTap: () {
                      dynamic currentState = stateList[index].getState();
                      if (currentState == StatePage.course) {
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const CoursePage()))
                            .then((value) {
                          setState(() {});
                        });
                      } else {
                        Provider.of<StateFragment>(context, listen: false)
                            .setState(currentState);
                      }
                    },
                    child: Container(
                      width: 143,
                      height: 169,
                      padding: const EdgeInsets.only(left: 20, top: 15),
                      margin: const EdgeInsets.only(right: 14),
                      decoration: BoxDecoration(
                          color: colorList[index],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 52,
                            height: 52,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Image.asset(
                              stateList[index].getPath(),
                              width: 30,
                              height: 30,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            stateList[index].getName().substring(0, i),
                            style: textStyle(Colors.black, 21, FontWeight.w700),
                          ),
                          Text(
                            stateList[index].getName().substring(i + 1),
                            style: textStyle(Colors.black, 21, FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ),
        const SizedBox(
          height: 34,
        ),
        Text(
          'Lịch học',
          style: textStyle(color5, 20, FontWeight.w600),
        ),
        Expanded(
          child: FutureBuilder(
              future: getCurrentCourse(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<String> list = snapshot.data as List<String>;
                  return ScrollConfiguration(
                    behavior: ScrollConfiguration.of(context).copyWith(
                      dragDevices: {
                        PointerDeviceKind.touch,
                        PointerDeviceKind.mouse,
                      },
                    ),
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: list.length,
                        itemBuilder: (context, index) => courseToDay(
                            dataCourse[list[index]]!.name,
                            dataCourse[list[index]]!.time,
                            dataCourse[list[index]]!.teacherName,
                            dataCourse[list[index]]!.dayOfWeek,list[index], context)),
                  );
                } else if (snapshot.hasError) {
                  return courseToDay('Trống', 'Trống', 'Trống', '',null, context);
                }
                return courseToDay('Loading', 'Loading', 'Loading', 'Load',null, context);
              }),
        )
      ],
    );
  }
}
