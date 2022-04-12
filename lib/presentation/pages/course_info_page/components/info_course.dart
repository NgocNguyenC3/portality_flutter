import 'package:flutter/material.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/presentation/pages/components/ulti_widget.dart';

import 'body.dart';
import 'header.dart';

class InfoPage extends StatelessWidget {
  dynamic size, width, index;

  InfoPage(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    width = size.width;
    return Container(
      color: colorTheme,
      width: width > withSize ? withSize : width,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          HeaderCourseInfo(index),
          Expanded(
              child: Container(
            width: double.infinity,
            decoration: boxWhiteBorder(),
            child: BodyInfoCourse(index),
          ))
        ],
      ),
    );
  }
}
