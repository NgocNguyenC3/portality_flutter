import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/presentation/pages/components/ulti_widget.dart';
import 'package:portality/presentation/pages/schedule_page/components/body.dart';
import 'package:portality/presentation/provider/state_week.dart';

import 'package:provider/provider.dart';

import 'components/header.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<StateWeek>(
      create: (context) => StateWeek(),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Consumer<StateWeek>(
          builder: (yourContext, model, _) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 25),
                HeaderSchedule(model),
                const SizedBox(height: 20),
                Text(
                  'Thời khóa biểu',
                  style: textStyle(colorGreen, 25, FontWeight.w700),
                ),
                Expanded(child: BodySchedule())
              ],
            );
          },
        ),
      ),
    );
  }
}
