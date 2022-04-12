import 'package:flutter/material.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/data/source/data.dart';
import 'package:portality/presentation/pages/components/ulti_function.dart';
import 'package:portality/presentation/pages/components/ulti_widget.dart';

class HeaderUserInfo extends StatelessWidget {
  const HeaderUserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic name = 'Ẩn danh', count = '0';
    return Padding(
      padding: const EdgeInsets.only(
          top: 80.0, left: sizePaddingAppBar, bottom: 10, right: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Image.asset(
                imagesPath + 'img.png',
                width: 70,
                height: 70,
              )),
          const SizedBox(
            width: 15,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FutureBuilder<String>(
                    future: getNamePref(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        name = dataUserAccount[snapshot.data!]!.getName();
                      }
                      return Text(
                        name,
                        style: textStyle(Colors.white, 20.0, FontWeight.w700),
                        overflow: TextOverflow.clip,
                      );
                    }),
                const SizedBox(
                  height: 5,
                ),
                FutureBuilder<List<String>>(
                    future: getCurrentCourse(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        count = snapshot.data!.length;
                      }
                      return Text(
                        'Đang tham gia ' + count.toString() + ' khóa học',
                        style: textStyle(color9, 13.0, FontWeight.w600),
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
