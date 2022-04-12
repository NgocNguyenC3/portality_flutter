import 'package:flutter/material.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/data/source/data.dart';
import 'package:portality/presentation/pages/components/ulti_widget.dart';

class BodyFee extends StatelessWidget {
  List<String> list;
  BodyFee(this.list, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic count = 0;
    for (String i in list) {
      count += double.parse(dataCourse[i]!.fee);
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        const SizedBox(
          height: 50,
        ),
        Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(color: colorTheme),
                borderRadius: const BorderRadius.all(Radius.circular(15))),
            child: Column(
              children: [
                Text(
                  'Tổng',
                  style: textStyle(Colors.red, 32, FontWeight.w900),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  count.toString() + '00 VND',
                  style: textStyle(color11, 30, FontWeight.w700),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          'CHI TIẾT HÓA ĐƠN',
          style: textStyle(Colors.black, 20.0, FontWeight.w700),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Text(
              'TÊN KHÓA HỌC',
              style: textStyle(color14, 14, FontWeight.w700),
            ),
            Expanded(child: Text('')),
            Text(
              'TIỀN',
              style: textStyle(color14, 14, FontWeight.w700),
            ),
          ],
        ),
        const SizedBox(
          height: 11,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          dataCourse[list[index]]!.name,
                          overflow: TextOverflow.fade,
                          style: textStyle(Colors.black, 14, FontWeight.w400),
                        ),
                      ),
                      Text(
                        dataCourse[list[index]]!.fee + ' VND',
                        style: textStyle(Colors.black, 14, FontWeight.w400),
                      ),
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
