import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/presentation/pages/components/ulti_function.dart';
import 'package:portality/presentation/pages/components/ulti_widget.dart';
import 'all_course.dart';

class BodyCoursePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BodyCoursePage();
  }
}

class _BodyCoursePage extends State<BodyCoursePage> {
  List<String> list = [];
  var listCourse = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];
  dynamic size, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    width = size.width;

    return SizedBox(
      width: width > withSize ? withSize : width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 90,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  IconButton(
                    icon: Image.asset(iconsPath + 'arrow.png'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Khóa học',
                    style: textStyle(Colors.black, 24, FontWeight.w700),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              },
            ),
            child: FutureBuilder<List<String>>(
              future: getCurrentCourse(),
              builder: (context, snapshot) {
                list = [];
                if (snapshot.hasData) {
                  list = snapshot.data!;
                }

                return ListView.builder(
                    itemCount: listCourse.length,
                    itemBuilder: (context, index) {
                      return AllCourse(context, listCourse[index],
                          list.contains(listCourse[index]) ? false : true);
                    });
              },
            ),
          ))
        ],
      ),
    );
  }
}
