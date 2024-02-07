import 'package:flutter/material.dart';
import 'package:scholarx/presentation/home_page_screen/home_page_screen.dart';
import 'package:scholarx/presentation/jumpstart_page_screen/jumpstart_page_screen.dart';
import 'package:scholarx/presentation/opening_screen/opening_screen.dart';
import 'package:scholarx/presentation/sign_up_page_tab_container_screen/sign_up_page_tab_container_screen.dart';

import 'package:scholarx/presentation/profile_page_screen/profile_page_screen.dart';
import 'package:scholarx/presentation/academic_page_screen/academic_page_screen.dart';
import 'package:scholarx/presentation/gpa_page_screen/gpa_page_screen.dart';
import 'package:scholarx/presentation/academic_achievements_page_screen/academic_achievements_page_screen.dart';
import 'package:scholarx/presentation/awards_page_screen/awards_page_screen.dart';
import 'package:scholarx/presentation/clubs_page_screen/clubs_page_screen.dart';
import 'package:scholarx/presentation/extracurricular_page_screen/extracurricular_page_screen.dart';
import 'package:scholarx/presentation/other_page_screen/other_page_screen.dart';
import 'package:scholarx/presentation/faq_page_screen/faq_page_screen.dart';
import 'package:scholarx/presentation/settings_page_screen/settings_page_screen.dart';
import 'package:scholarx/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homePageScreen = '/home_page_screen';

  static const String jumpstartPageScreen = '/jumpstart_page_screen';

  static const String openingScreen = '/opening_screen';

  static const String signUpPage = '/sign_up_page';

  static const String signUpPageTabContainerScreen =
      '/sign_up_page_tab_container_screen';

  static const String registerScreen = '/register_screen';

  static const String profilePageScreen = '/profile_page_screen';

  static const String academicPageScreen = '/academic_page_screen';

  static const String gpaPageScreen = '/gpa_page_screen';

  static const String academicAchievementsPageScreen =
      '/academic_achievements_page_screen';

  static const String awardsPageScreen = '/awards_page_screen';

  static const String clubsPageScreen = '/clubs_page_screen';

  static const String extracurricularPageScreen =
      '/extracurricular_page_screen';

  static const String otherPageScreen = '/other_page_screen';

  static const String faqPageScreen = '/faq_page_screen';

  static const String settingsPageScreen = '/settings_page_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homePageScreen: (context) => HomePageScreen(),
    jumpstartPageScreen: (context) => JumpstartPageScreen(),
    openingScreen: (context) => OpeningScreen(),
    signUpPageTabContainerScreen: (context) => SignUpPageTabContainerScreen(),
    profilePageScreen: (context) => ProfilePageScreen(),
    academicPageScreen: (context) => AcademicPageScreen(),
    gpaPageScreen: (context) => GpaPageScreen(),
    academicAchievementsPageScreen: (context) =>
        AcademicAchievementsPageScreen(),
    awardsPageScreen: (context) => AwardsPageScreen(),
    clubsPageScreen: (context) => ClubsPageScreen(),
    extracurricularPageScreen: (context) => ExtracurricularPageScreen(),
    otherPageScreen: (context) => OtherPageScreen(),
    faqPageScreen: (context) => FaqPageScreen(),
    settingsPageScreen: (context) => SettingsPageScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
