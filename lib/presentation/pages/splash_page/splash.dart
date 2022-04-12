import 'package:flutter/material.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/data/source/constants/time_animation.dart';
import 'package:portality/presentation/pages/components/logo.dart';
import 'package:portality/presentation/pages/login_page/login_page.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  dynamic size, width;
  @override
  void initState() {
    super.initState();
    splashAction();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    width = size.width;

    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Center(
            child: Container(
                color: colorTheme,
                width: width > withSize ? withSize : width,
                child: const Logo()),
          ),
        ),
      ),
    );
  }

  splashAction() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacement(
        context,
        PageRouteBuilder(
            transitionDuration: const Duration(seconds: timeLogo),
            pageBuilder: (_, __, ___) => LoginPage()));
  }
}
