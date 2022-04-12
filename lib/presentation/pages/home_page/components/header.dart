import 'package:flutter/material.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/data/source/data.dart';
import 'package:portality/presentation/pages/components/ulti_function.dart';
import 'package:portality/presentation/pages/components/ulti_widget.dart';

class HeaderHomePage extends StatelessWidget {
  dynamic size, height;
  HeaderHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    return Padding(
      padding: EdgeInsets.only(
          left: sizePaddingAppBar,
          top: height > 610 ? sizePaddingAppBar : 5,
          right: sizePaddingAppBar,
          bottom: height > 610 ? 15 : 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Xin chào,',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
          ),
          FutureBuilder<String>(
            future: getNamePref(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(
                  dataUserAccount[snapshot.data]!.getName(),
                  style: textStyle(Colors.white, 28, FontWeight.w700),
                );
              } else if (snapshot.hasError) {
                return Text(
                  'Error',
                  style: textStyle(Colors.white, 28, FontWeight.w700),
                );
              } else {
                return Text(
                  'Loading',
                  style: textStyle(Colors.white, 28, FontWeight.w700),
                );
              }
            },
          ),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            style: textStyle(Colors.white, 14, FontWeight.w500),
            decoration: InputDecoration(
                prefixIcon: Image.asset(iconsPath + 'magnifying.png'),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                labelStyle: textStyle(Colors.white, 14, FontWeight.w500),
                labelText: 'Tìm kiếm theo tên',
                filled: true,
                fillColor: colorGrey),
          ),
        ],
      ),
    );
  }

  
}
