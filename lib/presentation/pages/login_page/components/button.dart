import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/data/source/data.dart';
import 'package:portality/presentation/pages/components/ulti_widget.dart';
import 'package:portality/presentation/pages/main_page/main_page.dart';
import 'package:portality/presentation/provider/account_model.dart';
import 'package:portality/data/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';

class ButtonComponent extends StatelessWidget {
  const ButtonComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 332,
          height: 35,
          child: ElevatedButton(
            child: textButton('Đăng nhập'),
            style: buttonStyle(colorTheme),
            onPressed: () {
              checkingAccount(context);
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(iconsPath + 'line.png'),
            OutlinedButton(
              onPressed: () {},
              child: const Text(
                'Quên mật khẩu',
                style: TextStyle(
                    color: colorTheme,
                    fontSize: 11,
                    fontWeight: FontWeight.w600),
              ),
              style: OutlinedButton.styleFrom(
                shape: const StadiumBorder(side: BorderSide(color: colorTheme)),
              ),
            ),
            Image.asset(iconsPath + 'line.png')
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 204,
          height: 35,
          child: ElevatedButton(
            child: textButton('Đăng ký'),
            style: buttonStyle(colorGreen),
            onPressed: () => {},
          ),
        ),
      ],
    );
  }

  checkingAccount(context) async {
    var email = Provider.of<AccountModel>(context, listen: false).getEmail();
    var password =
        Provider.of<AccountModel>(context, listen: false).getPassword();

    UserModel? user = dataUserAccount[email];
    if (user == null || !user.getPassword().endsWith(password)) {
      Scaffold.of(context).showSnackBar(SnackBar(
          content: Text(
        'Tài khoản mật khẩu không đúng',
        style: textStyle(Colors.white, 15, FontWeight.w700),
      )));
      return;
    }
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(emailPref, email);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MainPage()));
  }
}

Widget textButton(text) {
  return Text(
    text,
    style: textStyle(Colors.white, 16, FontWeight.w700),
  );
}

ButtonStyle buttonStyle(color) {
  return ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(color),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      )));
}
