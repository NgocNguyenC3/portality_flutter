import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portality/data/models/user_model.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/data/source/data.dart';
import 'package:portality/presentation/pages/components/ulti_function.dart';
import 'package:portality/presentation/pages/components/ulti_widget.dart';

class BodyUserPage extends StatelessWidget {
  const BodyUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
        future: getNamePref(),
        builder: (context, snapshot) {
          UserModel data = UserModel('Trống', 'Trống', 'Trống', 'Trống',
              'Trống', 'Trống', 'Trống', 'Trống');
          if (snapshot.hasData) {
            data = dataUserAccount[snapshot.data!]!;
          }
          return ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              },
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  infoWidget('Email', data.getEmail()),
                  Image.asset(iconsPath + 'line1.png'),
                  infoWidget('Giới tính', data.getGender()),
                  Image.asset(iconsPath + 'line1.png'),
                  infoWidget(
                      'Chức vụ',
                      data.getType().compareTo("1") == 0
                          ? 'Giảng viên'
                          : 'Sinh viên'),
                  Image.asset(iconsPath + 'line1.png'),
                  infoWidget('Ngày sinh', data.getBirthday()),
                  Image.asset(iconsPath + 'line1.png'),
                  infoWidget('Địa chỉ', data.getAddress()),
                ],
              ),
            ),
          );
        });
  }
}
