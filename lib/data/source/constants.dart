import 'package:flutter/material.dart';
import 'package:portality/presentation/pages/login_page/login_page.dart';

const imagesPath = 'assets/images/';
const iconsPath = 'assets/icons/';

const appName = 'Portality';

// Colors
const colorTheme = Color.fromRGBO(26, 44, 78, 1);
const colorTheme1 = Color.fromRGBO(26, 44, 78, 0.1);
const colorGreen = Color.fromRGBO(65, 195, 142, 1);
const colorGrey = Color.fromRGBO(196, 196, 196, 0.2);
const color5 = Color.fromRGBO(107, 108, 119, 1);
const color1 = Color.fromRGBO(229, 223, 245, 1);
const color2 = Color.fromRGBO(228, 237, 255, 1);
const color3 = Color.fromRGBO(255, 221, 182, 1);
const color4 = Color.fromRGBO(201, 255, 203, 1);

const color8 = Color.fromRGBO(228, 237, 255, 1);
const color6 = Color.fromRGBO(229, 223, 245, 1);
const color7 = Color.fromRGBO(255, 221, 182, 1);

const color9 = Color.fromRGBO(223, 223, 223, 1);
const color10 = Color.fromRGBO(96, 95, 95, 1);
const color11 = Color.fromRGBO(60, 74, 102, 1);
const color12 = Color.fromRGBO(0, 0, 0, 0.4);
const color13 = Color.fromRGBO(245, 223, 243, 1);
const color14 = Color.fromRGBO(163, 163, 163, 1);
// Url
const baseLink = 'https://intro2se-api.herokuapp.com/';
const urlLogin = baseLink + 'user/login';

//Page
final loginRoute = MaterialPageRoute(builder: (context) => LoginPage());

//size
const sizeBox = 64.0;
const withSize = 360.0;
const sizePaddingAppBar = 30.0;

// shared pref
const emailPref = 'emailPref';
const currentCourse = 'current_course';
//Image link

const imgLink = imagesPath + 'img.png';

// Data const
const description1 =
    'Môn học thú vị khiến, tạo sự hứng thú cho các học sinh, sinh viên nhằm nâng cao chất lượng giảng dạy, tiếp thu hiệu quả, đảm bảo được đầu ra uy tín';
const description2 =
    'Môn học mang tính thách thức, đòi hỏi học sinh, sinh viên những kiến thức căn bản vững chắc';
const description3 =
    'Môn học nền tảng cho các em học sinh, sinh viên, là tiền đề để phát triển bản thân, nâng cao thực lực';
const require1 = 'Cần biết trước C++, java';
const require2 = 'Thái độ tích cực, môn học nền tảng';
const require3 = 'Các môn cơ sở ngành';
