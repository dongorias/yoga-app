import 'package:yoga_app/models/lesson.dart';
import 'package:yoga_app/utils/app_constant.dart';

List<String> listePersonneLoved = [
  getPathImage("user1.png"),
  getPathImage("user2.png"),
  getPathImage("user3.png"),
  getPathImage("user4.png"),
];

List<Lesson> listLesson = [
  Lesson("yoga1.png", "Bikram yoga", "12 Lessons", "Begineer", listePersonneLoved, false),
  Lesson("yoga2.png", "Hatha yoga", "14 Lessons", "Begineer", listePersonneLoved, true),
  Lesson("yoga1.png", "Bikram yoga", "12 Lessons", "Begineer", listePersonneLoved, false),
  Lesson("yoga2.png", "Hatha yoga", "14 Lessons", "Begineer", listePersonneLoved, true),
];
