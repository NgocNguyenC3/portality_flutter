import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/presentation/pages/components/ulti_widget.dart';
import 'package:portality/presentation/provider/state_week.dart';
import 'package:provider/provider.dart';

class HeaderSchedule extends StatelessWidget {
  final listDay = ['T2', 'T3', 'T4', 'T5', 'T6', 'T7', 'CN'];
  dynamic model;
  HeaderSchedule(this.model, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      padding: const EdgeInsets.all(10),
      height: 65,
      decoration: BoxDecoration(
          border: Border.all(color: color2),
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
          },
        ),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listDay.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Provider.of<StateWeek>(context, listen: false)
                      .setDay(listDay[index]);
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 45,
                  height: 65,
                  decoration: BoxDecoration(
                      color: model.currentDay.compareTo(listDay[index]) == 0
                          ? color11
                          : Colors.white,
                      border: Border.all(color: color11),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
                  child: Center(
                    child: Text(
                      listDay[index],
                      style: textStyle(
                          model.currentDay.compareTo(listDay[index]) != 0
                              ? color11
                              : Colors.white,
                          17,
                          FontWeight.w700),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
