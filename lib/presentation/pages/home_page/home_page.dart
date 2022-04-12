import 'package:flutter/material.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/presentation/pages/components/ulti_widget.dart';
import 'package:portality/presentation/pages/home_page/components/body.dart';

import 'components/header.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  dynamic size, height;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    return Container(
      color: colorTheme,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: HeaderHomePage(),
            flex: height > 572
                ? (height > 675)
                    ? 27
                    : 3
                : 27,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                  left: sizePaddingAppBar, top: sizePaddingAppBar),
              decoration: boxWhiteBorder(),
              child: BodyHomePage(),
            ),
            flex: height > 572
                ? (height > 675)
                    ? 73
                    : 7
                : 73,
          )
        ],
      ),
    );
  }
}
