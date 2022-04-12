import 'package:flutter/material.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/presentation/pages/components/ulti_widget.dart';
import 'package:portality/presentation/pages/login_page/login_page.dart';
import 'package:portality/presentation/provider/state_fragment.dart';
import 'package:provider/provider.dart';

class DrawerBody extends StatelessWidget {
  DrawerBody({Key? key}) : super(key: key);
  final stateList = [
    StateFragment(StatePage.homepage, 'Trang chủ', iconsPath + 'home.png'),
    StateFragment(
        StatePage.schedule, 'Thời khóa biểu', iconsPath + 'schedule.png'),
    StateFragment(StatePage.task, 'Nhiệm vụ', iconsPath + 'Briefcase.png'),
    StateFragment(
        StatePage.fee, 'Học phí', iconsPath + 'CurrencyCircleDollar.png'),
    StateFragment(StatePage.user, 'Cá nhân', iconsPath + 'User.png'),
    StateFragment(StatePage.out, 'Đăng xuất', iconsPath + 'SignOut.png')
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      padding: const EdgeInsets.all(19),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10))),
      child: ListView.builder(
        itemCount: stateList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              if (stateList[index].getState() == StatePage.out) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              }
              Provider.of<StateFragment>(context, listen: false)
                  .setState(stateList[index].getState());
              Scaffold.of(context).openEndDrawer();
            },
            child: Consumer<StateFragment>(
              builder: (yourContext, model, _) {
                StatePage state = model.getState();
                return Container(
                  padding: const EdgeInsets.only(
                      left: 10, top: 5, right: 8, bottom: 5),
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      color: state == stateList[index].getState()
                          ? colorTheme
                          : Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        stateList[index].getPath(),
                        width: 23,
                        height: 23,
                        color: state == stateList[index].getState()
                            ? Colors.white
                            : Colors.black,
                      ),
                      const SizedBox(width: 29),
                      Text(stateList[index].getName(),
                          style: textStyle(
                              state == stateList[index].getState()
                                  ? Colors.white
                                  : Colors.black,
                              18,
                              FontWeight.w500))
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
