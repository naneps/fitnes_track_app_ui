import 'package:fitnes_track_app_ui/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:fitnes_track_app_ui/route.dart' as route;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      onGenerateRoute: route.generateRoute,
    );
  }
}
