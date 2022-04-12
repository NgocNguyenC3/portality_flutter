import 'package:flutter/material.dart';
import 'package:portality/data/source/constants.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: 'dash',
        transitionOnUserGestures: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagesPath + 'logo.png'),
            const Text(
              appName,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 32),
            )
          ],
        ));
  }
}
