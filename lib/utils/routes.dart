import 'package:flutter/cupertino.dart';
import 'package:resume_builder/screens/input%20screens/Education/education.dart';
import 'package:resume_builder/screens/input%20screens/Interest/interest.dart';
import 'package:resume_builder/screens/input%20screens/Languages/languages.dart';
import 'package:resume_builder/screens/input%20screens/Project/project.dart';
import 'package:resume_builder/screens/input%20screens/Skills/skills.dart';
import 'package:resume_builder/screens/input%20screens/personal%20details/personal_details.dart';
import 'package:resume_builder/screens/input%20screens/work%20History/work_history.dart';
import 'package:resume_builder/screens/splash/splash.dart';
import 'package:resume_builder/screens/splash/splash2.dart';

import '../screens/PDF/pdf_view.dart';
import '../screens/home/home_page.dart';
import '../screens/input screens/Achievement/achievement.dart';
import '../screens/splash/splash3.dart';
import '../screens/splash/splash4.dart';

Map<String, Widget Function(BuildContext context)> routes = {
  '/': (context) => const Splash(),
  '/splash2': (context) => const Splash2(),
  '/splash3': (context) => const Splash3(),
  '/splash4': (context) => const Splash4(),
  '/home': (context) => const HomePage(),
  '/personal': (context) => const PersonalDetails(),
  '/education': (context) => const Education(),
  '/Work': (context) => const WorkHistory(),
  '/skills': (context) => const Skills(),
  '/Languages': (context) => const Languages(),
  '/Interest': (context) => const Interest(),
  '/Achievement': (context) => const Achievement(),
  '/project': (context) => const Project(),
  '/pdf': (context) => const PdfView(),
};
