import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/presentation/pages/components/ulti_widget.dart';

class BodyNotification extends StatelessWidget {
  dynamic size, width;
  final listNotificationKey = ['1', '01', '001', '2', '02', '002', '3'];
  final colorList = [color2, color3, color4, color2, color4, color3, color4];
  BodyNotification({Key? key}) : super(key: key);
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
                      'Thông báo',
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
              child: ListView.builder(
                  itemCount: listNotificationKey.length,
                  itemBuilder: (context, index) {
                    return notificationBox(
                        listNotificationKey[index], colorList[index]);
                  }),
            ))
          ],
        ));
  }
}
