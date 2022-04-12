import 'package:portality/data/models/course.dart';
import 'package:portality/data/source/constants.dart';
import 'package:portality/data/source/data.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<List<String>> getCurrentCourse() async {
  final prefs = await SharedPreferences.getInstance();
  if (prefs.getStringList(currentCourse) == null) return [];
  return prefs.getStringList(currentCourse)!;
}

Future<String> getNamePref() async {
  final prefs = await SharedPreferences.getInstance();

  return prefs.getString(emailPref)!;
}

Future<String> getPathPref() async {
  final prefs = await SharedPreferences.getInstance();

  return prefs.getString(emailPref)!;
}

saveCourse(index, isSave) async {
  final prefs = await SharedPreferences.getInstance();

  var list = prefs.getStringList(currentCourse);
  if (isSave) {
    list ??= [];
    list.add(index);
  } else {
    list!.remove(index);
  }

  prefs.setStringList(currentCourse, list);
}

Future<List<String>> getCourseByDay(day) async {
  List<String> list = [];
  await getCurrentCourse().then((value) {
    for (String id in value) {
      CourseModel courseModel = dataCourse[id]!;
      if (courseModel.dayOfWeek.compareTo(day) == 0) {
        list.add(id);
      }
    }
  });

  return list;
}
