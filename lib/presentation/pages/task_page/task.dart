import 'package:flutter/material.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/presentation/pages/components/ulti_widget.dart';
import 'package:portality/presentation/pages/task_page/components/header.dart';
import 'package:portality/presentation/provider/state_task.dart';
import 'package:provider/provider.dart';

import 'components/body.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<StateTask>(
      create: (context) => StateTask(),
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.only(
            top: sizePaddingAppBar, left: sizePaddingAppBar),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: double.infinity, height: 155, child: HeaderTask()),
            const SizedBox(
              height: 24,
            ),
            Text(
              'Danh sách nhiệm vụ',
              style: textStyle(Colors.black, 20, FontWeight.w700),
            ),
            const Expanded(child: BodyTask())
          ],
        ),
      ),
    );
  }
}
