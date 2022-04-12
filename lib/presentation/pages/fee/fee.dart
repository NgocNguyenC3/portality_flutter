import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/presentation/pages/components/ulti_function.dart';
import 'package:portality/presentation/pages/components/ulti_widget.dart';

import 'components/body.dart';

class FeePage extends StatelessWidget {
  const FeePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorTheme1,
      child: FutureBuilder<List<String>>(
          future: getCurrentCourse(),
          builder: (context, snapshot) {
            List<String> list = [];
            if (snapshot.hasData) {
              list = snapshot.data!;
            } else {
              return Center(
                  child: Text(
                '0.00 VND',
                style: textStyle(Colors.black, 30, FontWeight.w700),
              ));
            }
            return Container(
                padding: const EdgeInsets.only(
                    left: sizePaddingAppBar,
                    right: sizePaddingAppBar,
                    top: sizePaddingAppBar),
                child: BodyFee(list));
          }),
    );
  }
}
