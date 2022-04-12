import 'package:flutter/material.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/presentation/pages/components/ulti_widget.dart';
import 'package:portality/presentation/pages/user_info_page/components/header.dart';

import 'components/body.dart';

class UserPage extends StatelessWidget {
  dynamic size, width;
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
          HeaderUserInfo(),
          Expanded(
              child: Container(
            width: double.infinity,
            decoration: boxWhiteBorder(),
            child: BodyUserPage(),
          ))
        ],
      ),
    );
  }
}
