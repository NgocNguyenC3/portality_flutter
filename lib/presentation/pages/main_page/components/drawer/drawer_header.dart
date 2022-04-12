import 'package:flutter/material.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/data/source/data.dart';
import 'package:portality/presentation/pages/components/ulti_function.dart';
import 'package:portality/presentation/pages/components/ulti_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DrawerHeaderWidget extends StatelessWidget {
  const DrawerHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      padding: const EdgeInsets.fromLTRB(29, 29, 29, 0),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 4,
          ),
          Container(
            width: sizeBox,
            height: sizeBox,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: colorGrey),
            child: Center(
              child: FutureBuilder<String>(
                future: getPathPref(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Image.network(
                      dataUserAccount[snapshot.data]!.getPath(),
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => Image.asset(
                        imgLink,
                        fit: BoxFit.cover,
                      ),
                    );
                  } else {
                    return Image.asset(
                      imgLink,
                      fit: BoxFit.cover,
                    );
                  }
                },
              ),
            ),
          ),
          const SizedBox(
            height: 9,
          ),
          FutureBuilder<String>(
            future: getPathPref(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(dataUserAccount[snapshot.data]!.getName(),
                    style: textStyle(Colors.black, 21, FontWeight.w700));
              } else {
                return Text('Loading',
                    style: textStyle(Colors.black, 21, FontWeight.w700));
              }
            },
          ),
          FutureBuilder<String>(
            future: getPathPref(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(dataUserAccount[snapshot.data]!.getEmail(),
                    style: textStyle(Colors.grey, 16, FontWeight.w500));
              } else {
                return Text('Loading',
                    style: textStyle(Colors.grey, 16, FontWeight.w500));
              }
            },
          ),
        ],
      ),
    );
  }
}
