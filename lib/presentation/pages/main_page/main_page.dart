import 'package:flutter/material.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/presentation/pages/main_page/components/body.dart';
import 'package:portality/presentation/pages/main_page/components/drawer/drawer_header.dart';
import 'package:portality/presentation/provider/state_fragment.dart';
import 'package:provider/provider.dart';

import 'components/drawer/drawer_body.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: ChangeNotifierProvider<StateFragment>(
        create: (context) => StateFragment(
            StatePage.homepage, 'Trang chủ', iconsPath + 'home.png'),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          drawer: Column(
            children: [
              const DrawerHeaderWidget(),
              Image.asset(iconsPath + 'line1.png'),
              Expanded(
                child: DrawerBody(),
              )
            ],
          ),
          body: Center(child: BodyMainPage()),
        ),
      ),
    );
  }
}
