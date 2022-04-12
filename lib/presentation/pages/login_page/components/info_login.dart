import 'package:flutter/material.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/presentation/provider/account_model.dart';

import 'package:provider/provider.dart';

class InfoComponent extends StatefulWidget {
  const InfoComponent({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _InfoComponent();
  }
}

class _InfoComponent extends State<InfoComponent> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: emailController,
          style: const TextStyle(color: Colors.black),
          decoration:
              inputDecoration(iconsPath + 'mail_box.png', 'Tài khoản', 'Email'),
          onSaved: (String? value) {},
          onChanged: (value) {
            Provider.of<AccountModel>(context, listen: false).setMail(value);
          },
          validator: (String? value) =>
              value == null ? null : 'Email cannot be blank',
        ),
        TextFormField(
          controller: passwordController,
          obscureText: true,
          style: const TextStyle(color: Colors.black),
          decoration:
              inputDecoration(iconsPath + 'lock.png', 'Mật khẩu', 'Password'),
          onSaved: (String? value) {},
          onChanged: (value) {
            Provider.of<AccountModel>(context, listen: false)
                .setPassword(value);
          },
          validator: (String? value) =>
              value == null ? null : 'Password cannot be blank',
        )
      ],
    );
  }
}

InputDecoration inputDecoration(icon, hintText, labelText) {
  return InputDecoration(
    labelStyle: const TextStyle(color: Colors.grey),
    hintStyle: const TextStyle(color: Colors.grey),
    hintText: hintText,
    labelText: labelText,
    suffixIcon: Image.asset(
      icon,
      color: Colors.black,
      height: 15,
      width: 15,
    ),
  );
}
