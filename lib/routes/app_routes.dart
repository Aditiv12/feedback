import 'package:flutter/material.dart';
import '../presentation/feedback_screen/feedback_screen.dart';
import '../presentation/feedback_one_screen/feedback_one_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String feedbackScreen = '/feedback_screen';

  static const String feedbackOneScreen = '/feedback_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    feedbackScreen: (context) => FeedbackScreen(),
    feedbackOneScreen: (context) => FeedbackOneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
