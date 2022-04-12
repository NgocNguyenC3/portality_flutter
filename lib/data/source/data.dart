import 'package:portality/data/models/course.dart';
import 'package:portality/data/models/task.dart';
import 'package:portality/data/models/user_model.dart';
import 'package:portality/data/source/constants.dart';

final dataUserAccount = {
  'hocsinh1@gmail.com': UserModel('1', 'Học Sinh 1', 'hocsinh1@gmail.com',
      '123123', '2', 'Nam', '25/10/2001', 'Nhà 1'),
  'giaovien1@gmail.com': UserModel('2', 'Giáo viên 1', 'giaovien1@gmail.com',
      '123123', '1', 'Nam', '03/12/2001', 'Nhà 2'),
  '1': UserModel('0', 'Đoàn Ngọc Nguyên', 'ngocnguyenc3@gmail.com', '1', '2',
      'Nam', '03/10/2001', '25/42 Đặng Trần Côn'),
  'hocsinh1@gmail.com': UserModel('1', 'Học Sinh 1', 'hocsinh1@gmail.com',
      '123123', '2', 'Nam', '25/10/2001', 'Nhà 1'),
  'giaovien1@gmail.com': UserModel('2', 'Giáo viên 1', 'giaovien1@gmail.com',
      '123123', '1', 'Nam', '03/12/2001', 'Nhà 2'),
};

final dataCourse = {
  '0': CourseModel('Nhập môn lập trình', '07:30 AM - 11:30 AM', 'T2',
      description1, '180', require1, 'Nguyễn văn A', color6),
  '1': CourseModel('Nhập môn công nghệ thông tin', '08:30 AM - 12:30 PM', 'T3',
      description2, '300', require2, 'Nguyễn văn B', color7),
  '2': CourseModel('Kỹ thuật lập trình', '10:30 AM - 12:30 PM', 'T4',
      description2, '300', require3, 'Nguyễn văn C', color8),
  '3': CourseModel('Mạng máy tính', '07:30 AM - 8:30 AM', 'T5', description2,
      '300', require2, 'Nguyễn văn D', color6),
  '4': CourseModel('Cấu trúc dữ liệu và giải thuật', '08:30 AM - 12:30 PM',
      'T6', description2, '300', require1, 'Nguyễn văn E', color7),
  '5': CourseModel('Lập trình hướng đối tượng', '08:30 AM - 12:30 PM', 'T7',
      description2, '300', require3, 'Nguyễn văn F', color8),
  '6': CourseModel('Cơ sở dữ liệu', '08:30 AM - 11:00 AM', 'CN', description2,
      '300', require1, 'Nguyễn văn G', color6),
  '7': CourseModel('Nhập môn công nghệ phần mềm', '12:30 PM - 15:30 PM', 'T2',
      description2, '300', require2, 'Nguyễn văn M', color7),
  '8': CourseModel('Hệ điều hành', '08:30 AM - 9:30 PM', 'T3', description2,
      '300', require3, 'Nguyễn văn N', color8),
  '9': CourseModel('Hệ quản trị cơ sở dữ liệu', '08:30 AM - 10:30 AM', 'T4',
      description2, '300', require2, 'Nguyễn văn P', color6),
  '10': CourseModel('Thiết kế ứng dụng mobile', '08:30 AM - 11:30 AM', 'T5',
      description2, '300', require3, 'Nguyễn văn Q', color7),
};

final dataTask = {
  '0': [
    TaskModel('Làm bài nhập về nhà tuần 5', '11:59 PM', '16/10/2021'),
    TaskModel('Đồ án', '11:59 PM', '12/4/2021'),
    TaskModel('Meeting qua zoom', '1:59 PM', '04/1/2021'),
    TaskModel('Nộp báo cáo lần 1', '11:59 PM', '01/5/2021')
  ],
  '1': [
    TaskModel('Làm bài nhập về nhà tuần 5', '11:59PM', '16/10/2021'),
    TaskModel('Đồ án cuối kỳ', '11:59 PM', '12/4/2021'),
    TaskModel('Meeting qua zoom', '1:59 PM', '04/1/2021'),
  ],
  '2': [
    TaskModel('Làm bài nhập về nhà tuần 5', '11:59PM', '16/10/2021'),
    TaskModel('Đồ án giữa kỳ', '11:59 PM', '12/4/2021'),
    TaskModel('Meeting qua zoom', '1:59 PM', '04/1/2021'),
    TaskModel('Nộp báo cáo lần 3', '11:59 PM', '01/5/2021'),
    TaskModel('Báo cáo tiến độ', '11:59 PM', '01/5/2021')
  ],
  '3': [
    TaskModel('Làm bài nhập về nhà tuần 5', '11:59 PM', '16/10/2021'),
    TaskModel('Đồ án đầu khóa', '11:59 PM', '12/4/2021'),
    TaskModel('Meeting qua zoom', '1:59 PM', '04/1/2021'),
    TaskModel('Nộp báo cáo lần 4', '11:59 PM', '01/5/2021'),
    TaskModel('Nộp báo cáo lần 3', '11:59 PM', '01/5/2021'),
    TaskModel('Báo cáo tiến độ', '11:59 PM', '01/5/2021')
  ],
  '4': [
    TaskModel('Làm bài nhập về nhà tuần 5', '11:59 PM', '16/10/2021'),
    TaskModel('Đồ án đã cập nhật', '11:59 PM', '12/4/2021'),
    TaskModel('Meeting qua zoom', '1:59 PM', '04/1/2021'),
    TaskModel('Nộp báo cáo lần 5', '11:59 PM', '01/5/2021'),
    TaskModel('Nộp báo cáo lần 3', '11:59 PM', '01/5/2021'),
    TaskModel('Báo cáo tiến độ', '11:59 PM', '01/5/2021'),
    TaskModel('Nộp báo cáo lần 3', '11:59 PM', '01/5/2021'),
    TaskModel('Báo cáo tiến độ', '11:59 PM', '01/5/2021')
  ],
  '5': [
    TaskModel('Làm bài nhập về nhà tuần 5', '11:59 PM', '16/10/2021'),
    TaskModel('Đồ án đã thay đổi', '11:59 PM', '12/4/2021'),
    TaskModel('Meeting qua zoom', '1:59 PM', '04/1/2021'),
    TaskModel('Nộp báo cáo lần 6', '11:59 PM', '01/5/2021'),
    TaskModel('Nộp báo cáo lần 3', '11:59 PM', '01/5/2021'),
    TaskModel('Báo cáo tiến độ', '11:59 PM', '01/5/2021')
  ],
  '6': [
    TaskModel('Làm bài nhập về nhà tuần 5', '11:59 PM', '16/10/2021'),
    TaskModel('Hủy đồ án', '11:59PM', '12/4/2021'),
    TaskModel('Meeting qua zoom', '1:59 PM', '04/1/2021'),
    TaskModel('Nộp báo cáo lần 3', '11:59 PM', '01/5/2021'),
    TaskModel('Báo cáo tiến độ', '11:59 PM', '01/5/2021')
  ],
  '7': [
    TaskModel('Làm bài nhập về nhà tuần 5', '11:59 PM', '16/10/2021'),
    TaskModel('Đồ án thang điểm', '11:59 PM', '12/4/2021'),
    TaskModel('Meeting qua zoom', '1:59 PM', '04/1/2021'),
    TaskModel('Nộp báo cáo lần 8', '11:59 PM', '01/5/2021')
  ],
  '8': [
    TaskModel('Làm bài nhập về nhà tuần 5', '11:59 PM', '16/10/2021'),
    TaskModel('Đồ án cuối khóa', '11:59 PM', '12/4/2021'),
    TaskModel('Meeting qua zoom', '1:59 PM', '04/1/2021'),
    TaskModel('Nộp báo cáo lần 9', '11:59 PM', '01/5/2021')
  ],
  '9': [
    TaskModel('Làm bài nhập về nhà tuần 5', '11:59 PM', '16/10/2021'),
    TaskModel('Sơ đồ diagram', '11:59 PM', '12/4/2021'),
    TaskModel('Meeting qua zoom', '1:59 PM', '04/1/2021'),
    TaskModel('Nộp báo cáo lần 10', '11:59 PM', '01/5/2021'),
    TaskModel('Nộp báo cáo lần 3', '11:59 PM', '01/5/2021'),
    TaskModel('Báo cáo tiến độ', '11:59 PM', '01/5/2021'),
    TaskModel('Nộp báo cáo lần 3', '11:59 PM', '01/5/2021'),
    TaskModel('Báo cáo tiến độ', '11:59 PM', '01/5/2021'),
    TaskModel('Nộp báo cáo lần 3', '11:59 PM', '01/5/2021'),
    TaskModel('Báo cáo tiến độ', '11:59 PM', '01/5/2021')
  ],
  '10': [
    TaskModel('Làm bài nhập về nhà tuần 5', '11:59 PM', '16/10/2021'),
    TaskModel('Viết sơ đồ use-case', '11:59 PM', '12/4/2021'),
    TaskModel('Meeting qua zoom', '1:59 PM', '04/1/2021'),
    TaskModel('Nộp báo cáo lần 11', '11:59 PM', '01/5/2021')
  ]
};

final dataNotification = {
  '1':
      'Học phần Phát triển phần mềm cho thiết bị di động sẽ được mở vào ngày 25/12/2022',
  '01': 'Học phần Phát triển ứng dụng web đã được mở',
  '001': 'Đã có thời khóa biểu cho học kỳ 2',
  '2': 'Đã có lịch học kinh tế chính trị Mác-Lenin',
  '02': 'Thanh toán chi phí cho học kỳ mới',
  '002': 'Lịch thi học kỳ 2 đã có, mời các bạn sinh viên kiểm tra',
  '3': 'Kết quả đánh giá năng lực 2022 đã có',
};
