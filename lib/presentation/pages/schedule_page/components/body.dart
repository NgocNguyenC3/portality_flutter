import 'package:flutter/cupertino.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/presentation/pages/components/ulti_function.dart';
import 'package:portality/presentation/pages/components/ulti_widget.dart';
import 'package:portality/presentation/provider/state_week.dart';
import 'package:provider/provider.dart';

class BodySchedule extends StatelessWidget {
  const BodySchedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: sizePaddingAppBar),
      child: FutureBuilder<List<String>>(
          future: getCourseByDay(
              Provider.of<StateWeek>(context, listen: true).currentDay),
          builder: (context, snapshot) {
            List<String> list = [];
            if (snapshot.hasData) {
              list.addAll(snapshot.data!);
            }
            
            return ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return scheduleItem(context, list[index]);
                });
          }),
    );
  }
}
