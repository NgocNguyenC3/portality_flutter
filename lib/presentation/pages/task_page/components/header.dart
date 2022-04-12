import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/data/source/data.dart';
import 'package:portality/presentation/pages/components/ulti_function.dart';
import 'package:portality/presentation/pages/components/ulti_widget.dart';
import 'package:portality/presentation/provider/state_task.dart';
import 'package:provider/provider.dart';

class HeaderTask extends StatelessWidget {
  const HeaderTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<String>>(
        future: getCurrentCourse(),
        builder: (context, snapshot) {
          List<String> list = [];
          if (snapshot.hasData) {
            list = snapshot.data!;
          }
          return ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              },
            ),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Provider.of<StateTask>(context, listen: false)
                          .setId(list[index]);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 14.0),
                      padding: const EdgeInsets.all(20.0),
                      width: 143,
                      height: 150,
                      decoration: BoxDecoration(
                          color: dataCourse[list[index]]!.color,
                          border: Border.all(
                              width: 3,
                              color:
                                  Provider.of<StateTask>(context, listen: true)
                                              .id
                                              .compareTo(list[index]) ==
                                          0
                                      ? colorTheme
                                      : dataCourse[list[index]]!.color),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(
                              dataCourse[list[index]]!.name,
                              style:
                                  textStyle(Colors.black, 20, FontWeight.w700),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                              '+' +
                                  dataTask[list[index]]!.length.toString() +
                                  ' nhiệm vụ',
                              style: textStyle(color5, 13, FontWeight.w300)),
                        ],
                      ),
                    ),
                  );
                }),
          );
        });
  }
}
