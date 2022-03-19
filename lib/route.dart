import 'package:fitnes_track_app_ui/pages/root_app.dart';
import 'package:fitnes_track_app_ui/pages/today_target.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings setting) {
  final Map<String, dynamic> args = new Map<String, dynamic>();

  switch (setting.name) {
    case '/root_app':
      return MaterialPageRoute(builder: (context) => RootApp());
    case '/today_target_detail':
      return MaterialPageRoute(builder: (context) => TodayTargetDetailPage());
    default:
      return MaterialPageRoute(
          builder: (context) => Scaffold(
                body: Center(),
              ));
  }
}
