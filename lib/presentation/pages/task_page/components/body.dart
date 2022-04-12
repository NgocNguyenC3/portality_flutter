import 'package:flutter/cupertino.dart';
import 'package:portality/data/source/data.dart';
import 'package:portality/presentation/pages/components/ulti_function.dart';
import 'package:portality/presentation/pages/components/ulti_widget.dart';
import 'package:portality/presentation/provider/state_task.dart';
import 'package:provider/provider.dart';

class BodyTask extends StatelessWidget {
  const BodyTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String id = Provider.of<StateTask>(context, listen: true).id;
    if (id == '-1') return const SizedBox();
    return ListView.builder(
        itemCount: dataTask[id]!.length,
        itemBuilder: (context, index) {
          return taskBox(id, index);
        });
  }
}
