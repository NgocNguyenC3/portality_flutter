import 'package:flutter/material.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/presentation/pages/fee/fee.dart';
import 'package:portality/presentation/pages/home_page/home_page.dart';
import 'package:portality/presentation/pages/notification_page/notification_page.dart';
import 'package:portality/presentation/pages/schedule_page/schedule.dart';
import 'package:portality/presentation/pages/task_page/task.dart';
import 'package:portality/presentation/pages/user_info_page/user_info_page.dart';
import 'package:portality/presentation/provider/state_fragment.dart';
import 'package:provider/provider.dart';

class BodyMainPage extends StatelessWidget {
  dynamic size, width;

  BodyMainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    width = size.width;

    return SizedBox(
      width: width > withSize ? withSize : width,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: sizePaddingAppBar),
              color: colorTheme,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    child: Image.asset(iconsPath + 'menu.png'),
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                  const Expanded(child: Text(' ')),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NotificationPage()));
                      },
                      child: Image.asset(iconsPath + 'bell.png'))
                ],
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Center(
              child: Consumer<StateFragment>(
                builder: (yourContext, model, child) {
                  switch (model.getState()) {
                    case StatePage.homepage:
                      return HomePage();
                    case StatePage.fee:
                      return FeePage();
                    case StatePage.schedule:
                      return SchedulePage();
                    case StatePage.task:
                      return TaskPage();
                    case StatePage.user:
                      return UserPage();
                    default:
                      return const Text('null');
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
