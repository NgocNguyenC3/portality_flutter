import 'package:flutter/material.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/data/source/constants/time_animation.dart';
import 'package:portality/presentation/pages/components/Logo.dart';
import 'package:portality/presentation/pages/components/ulti_widget.dart';
import 'package:portality/presentation/pages/login_page/components/button.dart';
import 'package:portality/presentation/pages/login_page/components/info_login.dart';
import 'package:portality/presentation/provider/account_model.dart';
import 'package:provider/provider.dart';
import 'package:delayed_display/delayed_display.dart';

class LoginPage extends StatelessWidget {
  dynamic size, width;
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    width = size.width;
    return ChangeNotifierProvider<AccountModel>(
      create: (context) => AccountModel(),
      child: MaterialApp(
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Container(
              color: colorTheme,
              width: width > withSize ? withSize : width,
              child: Column(
                children: [
                  const Expanded(
                    child: Center(child: Logo()),
                    flex: 2,
                  ),
                  Expanded(
                    flex: 7,
                    child: DelayedDisplay(
                      delay: const Duration(seconds: timeLogo),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: boxWhiteBorder(),
                        child: Column(
                          children: const [
                            SizedBox(
                              height: 70,
                            ),
                            Expanded(
                              child: Center(child: InfoComponent()),
                              flex: 5,
                            ),
                            Expanded(
                              child: Center(child: ButtonComponent()),
                              flex: 4,
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
